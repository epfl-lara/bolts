; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82252 () Bool)

(assert start!82252)

(declare-fun b_free!18497 () Bool)

(declare-fun b_next!18497 () Bool)

(assert (=> start!82252 (= b_free!18497 (not b_next!18497))))

(declare-fun tp!64452 () Bool)

(declare-fun b_and!30003 () Bool)

(assert (=> start!82252 (= tp!64452 b_and!30003)))

(declare-fun b!958238 () Bool)

(declare-fun e!540245 () Bool)

(assert (=> b!958238 (= e!540245 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun lt!430382 () Bool)

(declare-datatypes ((V!33253 0))(
  ( (V!33254 (val!10652 Int)) )
))
(declare-fun minValue!1328 () V!33253)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58523 0))(
  ( (array!58524 (arr!28131 (Array (_ BitVec 32) (_ BitVec 64))) (size!28611 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58523)

(declare-datatypes ((ValueCell!10120 0))(
  ( (ValueCellFull!10120 (v!13209 V!33253)) (EmptyCell!10120) )
))
(declare-datatypes ((array!58525 0))(
  ( (array!58526 (arr!28132 (Array (_ BitVec 32) ValueCell!10120)) (size!28612 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58525)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33253)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13822 0))(
  ( (tuple2!13823 (_1!6921 (_ BitVec 64)) (_2!6921 V!33253)) )
))
(declare-datatypes ((List!19687 0))(
  ( (Nil!19684) (Cons!19683 (h!20845 tuple2!13822) (t!28058 List!19687)) )
))
(declare-datatypes ((ListLongMap!12533 0))(
  ( (ListLongMap!12534 (toList!6282 List!19687)) )
))
(declare-fun contains!5335 (ListLongMap!12533 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3467 (array!58523 array!58525 (_ BitVec 32) (_ BitVec 32) V!33253 V!33253 (_ BitVec 32) Int) ListLongMap!12533)

(assert (=> b!958238 (= lt!430382 (contains!5335 (getCurrentListMap!3467 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28131 _keys!1668) i!793)))))

(declare-fun b!958239 () Bool)

(declare-fun res!641528 () Bool)

(assert (=> b!958239 (=> (not res!641528) (not e!540245))))

(declare-datatypes ((List!19688 0))(
  ( (Nil!19685) (Cons!19684 (h!20846 (_ BitVec 64)) (t!28059 List!19688)) )
))
(declare-fun arrayNoDuplicates!0 (array!58523 (_ BitVec 32) List!19688) Bool)

(assert (=> b!958239 (= res!641528 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19685))))

(declare-fun b!958240 () Bool)

(declare-fun res!641525 () Bool)

(assert (=> b!958240 (=> (not res!641525) (not e!540245))))

(assert (=> b!958240 (= res!641525 (and (= (size!28612 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28611 _keys!1668) (size!28612 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33784 () Bool)

(declare-fun mapRes!33784 () Bool)

(assert (=> mapIsEmpty!33784 mapRes!33784))

(declare-fun b!958241 () Bool)

(declare-fun res!641527 () Bool)

(assert (=> b!958241 (=> (not res!641527) (not e!540245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958241 (= res!641527 (validKeyInArray!0 (select (arr!28131 _keys!1668) i!793)))))

(declare-fun b!958242 () Bool)

(declare-fun res!641524 () Bool)

(assert (=> b!958242 (=> (not res!641524) (not e!540245))))

(assert (=> b!958242 (= res!641524 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28611 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28611 _keys!1668))))))

(declare-fun b!958244 () Bool)

(declare-fun e!540246 () Bool)

(declare-fun e!540247 () Bool)

(assert (=> b!958244 (= e!540246 (and e!540247 mapRes!33784))))

(declare-fun condMapEmpty!33784 () Bool)

(declare-fun mapDefault!33784 () ValueCell!10120)

