// src/components/DrawingComponent.js
import React from 'react';
import { Tldraw } from '@tldraw/tldraw';
import '@tldraw/tldraw/tldraw.css';

function DrawingComponent() {
    return (
        <div style={{ width: '100vw', height: '100vh' }}>
            <Tldraw persistenceKey="my-persistence-key" />
        </div>
    );
}

export default DrawingComponent;
