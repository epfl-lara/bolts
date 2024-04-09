; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77654 () Bool)

(assert start!77654)

(declare-fun b_free!16211 () Bool)

(declare-fun b_next!16211 () Bool)

(assert (=> start!77654 (= b_free!16211 (not b_next!16211))))

(declare-fun tp!56895 () Bool)

(declare-fun b_and!26595 () Bool)

(assert (=> start!77654 (= tp!56895 b_and!26595)))

(declare-fun b!904689 () Bool)

(declare-fun res!610572 () Bool)

(declare-fun e!506977 () Bool)

(assert (=> b!904689 (=> (not res!610572) (not e!506977))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904689 (= res!610572 (inRange!0 i!717 mask!1756))))

(declare-fun b!904690 () Bool)

(declare-fun res!610567 () Bool)

(assert (=> b!904690 (=> (not res!610567) (not e!506977))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-datatypes ((array!53288 0))(
  ( (array!53289 (arr!25599 (Array (_ BitVec 32) (_ BitVec 64))) (size!26059 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53288)

(declare-datatypes ((V!29803 0))(
  ( (V!29804 (val!9365 Int)) )
))
(declare-datatypes ((ValueCell!8833 0))(
  ( (ValueCellFull!8833 (v!11870 V!29803)) (EmptyCell!8833) )
))
(declare-datatypes ((array!53290 0))(
  ( (array!53291 (arr!25600 (Array (_ BitVec 32) ValueCell!8833)) (size!26060 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53290)

(assert (=> b!904690 (= res!610567 (and (= (size!26060 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26059 _keys!1386) (size!26060 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904692 () Bool)

(declare-fun e!506978 () Bool)

(assert (=> b!904692 (= e!506977 (not e!506978))))

(declare-fun res!610570 () Bool)

(assert (=> b!904692 (=> res!610570 e!506978)))

(assert (=> b!904692 (= res!610570 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26059 _keys!1386))))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904692 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29803)

(declare-datatypes ((Unit!30663 0))(
  ( (Unit!30664) )
))
(declare-fun lt!408280 () Unit!30663)

(declare-fun minValue!1094 () V!29803)

(declare-fun lemmaKeyInListMapIsInArray!194 (array!53288 array!53290 (_ BitVec 32) (_ BitVec 32) V!29803 V!29803 (_ BitVec 64) Int) Unit!30663)

(assert (=> b!904692 (= lt!408280 (lemmaKeyInListMapIsInArray!194 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904693 () Bool)

(declare-fun res!610566 () Bool)

(assert (=> b!904693 (=> (not res!610566) (not e!506977))))

(declare-datatypes ((List!18064 0))(
  ( (Nil!18061) (Cons!18060 (h!19206 (_ BitVec 64)) (t!25455 List!18064)) )
))
(declare-fun arrayNoDuplicates!0 (array!53288 (_ BitVec 32) List!18064) Bool)

(assert (=> b!904693 (= res!610566 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18061))))

(declare-fun mapNonEmpty!29656 () Bool)

(declare-fun mapRes!29656 () Bool)

(declare-fun tp!56896 () Bool)

(declare-fun e!506979 () Bool)

(assert (=> mapNonEmpty!29656 (= mapRes!29656 (and tp!56896 e!506979))))

(declare-fun mapKey!29656 () (_ BitVec 32))

(declare-fun mapRest!29656 () (Array (_ BitVec 32) ValueCell!8833))

(declare-fun mapValue!29656 () ValueCell!8833)

(assert (=> mapNonEmpty!29656 (= (arr!25600 _values!1152) (store mapRest!29656 mapKey!29656 mapValue!29656))))

(declare-fun mapIsEmpty!29656 () Bool)

(assert (=> mapIsEmpty!29656 mapRes!29656))

(declare-fun b!904694 () Bool)

(declare-fun e!506975 () Bool)

(declare-fun e!506976 () Bool)

(assert (=> b!904694 (= e!506975 (and e!506976 mapRes!29656))))

(declare-fun condMapEmpty!29656 () Bool)

(declare-fun mapDefault!29656 () ValueCell!8833)

