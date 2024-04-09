; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20628 () Bool)

(assert start!20628)

(declare-fun b_free!5275 () Bool)

(declare-fun b_next!5275 () Bool)

(assert (=> start!20628 (= b_free!5275 (not b_next!5275))))

(declare-fun tp!18856 () Bool)

(declare-fun b_and!12039 () Bool)

(assert (=> start!20628 (= tp!18856 b_and!12039)))

(declare-fun res!99374 () Bool)

(declare-fun e!134422 () Bool)

(assert (=> start!20628 (=> (not res!99374) (not e!134422))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20628 (= res!99374 (validMask!0 mask!1149))))

(assert (=> start!20628 e!134422))

(declare-datatypes ((V!6489 0))(
  ( (V!6490 (val!2610 Int)) )
))
(declare-datatypes ((ValueCell!2222 0))(
  ( (ValueCellFull!2222 (v!4576 V!6489)) (EmptyCell!2222) )
))
(declare-datatypes ((array!9474 0))(
  ( (array!9475 (arr!4487 (Array (_ BitVec 32) ValueCell!2222)) (size!4812 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9474)

(declare-fun e!134417 () Bool)

(declare-fun array_inv!2959 (array!9474) Bool)

(assert (=> start!20628 (and (array_inv!2959 _values!649) e!134417)))

(assert (=> start!20628 true))

(declare-fun tp_is_empty!5131 () Bool)

(assert (=> start!20628 tp_is_empty!5131))

(declare-datatypes ((array!9476 0))(
  ( (array!9477 (arr!4488 (Array (_ BitVec 32) (_ BitVec 64))) (size!4813 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9476)

(declare-fun array_inv!2960 (array!9476) Bool)

(assert (=> start!20628 (array_inv!2960 _keys!825)))

(assert (=> start!20628 tp!18856))

(declare-fun b!205552 () Bool)

(declare-fun res!99370 () Bool)

(assert (=> b!205552 (=> (not res!99370) (not e!134422))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205552 (= res!99370 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4813 _keys!825))))))

(declare-fun b!205553 () Bool)

(declare-fun res!99369 () Bool)

(assert (=> b!205553 (=> (not res!99369) (not e!134422))))

(declare-datatypes ((List!2877 0))(
  ( (Nil!2874) (Cons!2873 (h!3515 (_ BitVec 64)) (t!7816 List!2877)) )
))
(declare-fun arrayNoDuplicates!0 (array!9476 (_ BitVec 32) List!2877) Bool)

(assert (=> b!205553 (= res!99369 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2874))))

(declare-fun b!205554 () Bool)

(declare-fun e!134421 () Bool)

(declare-fun mapRes!8765 () Bool)

(assert (=> b!205554 (= e!134417 (and e!134421 mapRes!8765))))

(declare-fun condMapEmpty!8765 () Bool)

(declare-fun mapDefault!8765 () ValueCell!2222)

