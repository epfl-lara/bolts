; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108340 () Bool)

(assert start!108340)

(declare-fun mapIsEmpty!51803 () Bool)

(declare-fun mapRes!51803 () Bool)

(assert (=> mapIsEmpty!51803 mapRes!51803))

(declare-fun b!1278380 () Bool)

(declare-fun res!849386 () Bool)

(declare-fun e!730281 () Bool)

(assert (=> b!1278380 (=> (not res!849386) (not e!730281))))

(declare-datatypes ((array!84045 0))(
  ( (array!84046 (arr!40523 (Array (_ BitVec 32) (_ BitVec 64))) (size!41074 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84045)

(assert (=> b!1278380 (= res!849386 (and (bvsle #b00000000000000000000000000000000 (size!41074 _keys!1741)) (bvslt (size!41074 _keys!1741) #b01111111111111111111111111111111)))))

(declare-fun b!1278381 () Bool)

(declare-fun res!849387 () Bool)

(assert (=> b!1278381 (=> (not res!849387) (not e!730281))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84045 (_ BitVec 32)) Bool)

(assert (=> b!1278381 (= res!849387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278382 () Bool)

(declare-fun res!849385 () Bool)

(assert (=> b!1278382 (=> (not res!849385) (not e!730281))))

(declare-datatypes ((List!28904 0))(
  ( (Nil!28901) (Cons!28900 (h!30109 (_ BitVec 64)) (t!42451 List!28904)) )
))
(declare-fun noDuplicate!2089 (List!28904) Bool)

(assert (=> b!1278382 (= res!849385 (noDuplicate!2089 Nil!28901))))

(declare-fun mapNonEmpty!51803 () Bool)

(declare-fun tp!98778 () Bool)

(declare-fun e!730285 () Bool)

(assert (=> mapNonEmpty!51803 (= mapRes!51803 (and tp!98778 e!730285))))

(declare-datatypes ((V!49773 0))(
  ( (V!49774 (val!16826 Int)) )
))
(declare-datatypes ((ValueCell!15853 0))(
  ( (ValueCellFull!15853 (v!19423 V!49773)) (EmptyCell!15853) )
))
(declare-fun mapValue!51803 () ValueCell!15853)

(declare-datatypes ((array!84047 0))(
  ( (array!84048 (arr!40524 (Array (_ BitVec 32) ValueCell!15853)) (size!41075 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84047)

(declare-fun mapKey!51803 () (_ BitVec 32))

(declare-fun mapRest!51803 () (Array (_ BitVec 32) ValueCell!15853))

(assert (=> mapNonEmpty!51803 (= (arr!40524 _values!1445) (store mapRest!51803 mapKey!51803 mapValue!51803))))

(declare-fun b!1278383 () Bool)

(declare-fun e!730286 () Bool)

(assert (=> b!1278383 (= e!730281 e!730286)))

(declare-fun res!849389 () Bool)

(assert (=> b!1278383 (=> res!849389 e!730286)))

(declare-fun contains!7757 (List!28904 (_ BitVec 64)) Bool)

(assert (=> b!1278383 (= res!849389 (contains!7757 Nil!28901 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1278384 () Bool)

(declare-fun res!849388 () Bool)

(assert (=> b!1278384 (=> (not res!849388) (not e!730281))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278384 (= res!849388 (and (= (size!41075 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41074 _keys!1741) (size!41075 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278385 () Bool)

(declare-fun e!730282 () Bool)

(declare-fun e!730283 () Bool)

(assert (=> b!1278385 (= e!730282 (and e!730283 mapRes!51803))))

(declare-fun condMapEmpty!51803 () Bool)

(declare-fun mapDefault!51803 () ValueCell!15853)

