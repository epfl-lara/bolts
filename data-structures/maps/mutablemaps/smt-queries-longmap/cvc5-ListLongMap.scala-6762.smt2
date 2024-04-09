; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84884 () Bool)

(assert start!84884)

(declare-fun b!991586 () Bool)

(declare-fun e!559306 () Bool)

(declare-datatypes ((List!20976 0))(
  ( (Nil!20973) (Cons!20972 (h!22134 (_ BitVec 64)) (t!29967 List!20976)) )
))
(declare-fun contains!5739 (List!20976 (_ BitVec 64)) Bool)

(assert (=> b!991586 (= e!559306 (contains!5739 Nil!20973 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!662906 () Bool)

(declare-fun e!559310 () Bool)

(assert (=> start!84884 (=> (not res!662906) (not e!559310))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84884 (= res!662906 (validMask!0 mask!2471))))

(assert (=> start!84884 e!559310))

(assert (=> start!84884 true))

(declare-datatypes ((V!36113 0))(
  ( (V!36114 (val!11724 Int)) )
))
(declare-datatypes ((ValueCell!11192 0))(
  ( (ValueCellFull!11192 (v!14300 V!36113)) (EmptyCell!11192) )
))
(declare-datatypes ((array!62647 0))(
  ( (array!62648 (arr!30165 (Array (_ BitVec 32) ValueCell!11192)) (size!30645 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62647)

(declare-fun e!559309 () Bool)

(declare-fun array_inv!23159 (array!62647) Bool)

(assert (=> start!84884 (and (array_inv!23159 _values!1551) e!559309)))

(declare-datatypes ((array!62649 0))(
  ( (array!62650 (arr!30166 (Array (_ BitVec 32) (_ BitVec 64))) (size!30646 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62649)

(declare-fun array_inv!23160 (array!62649) Bool)

(assert (=> start!84884 (array_inv!23160 _keys!1945)))

(declare-fun mapIsEmpty!37089 () Bool)

(declare-fun mapRes!37089 () Bool)

(assert (=> mapIsEmpty!37089 mapRes!37089))

(declare-fun b!991587 () Bool)

(declare-fun res!662902 () Bool)

(assert (=> b!991587 (=> (not res!662902) (not e!559310))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991587 (= res!662902 (and (= (size!30645 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30646 _keys!1945) (size!30645 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991588 () Bool)

(declare-fun res!662905 () Bool)

(assert (=> b!991588 (=> (not res!662905) (not e!559310))))

(declare-fun noDuplicate!1388 (List!20976) Bool)

(assert (=> b!991588 (= res!662905 (noDuplicate!1388 Nil!20973))))

(declare-fun mapNonEmpty!37089 () Bool)

(declare-fun tp!70161 () Bool)

(declare-fun e!559308 () Bool)

(assert (=> mapNonEmpty!37089 (= mapRes!37089 (and tp!70161 e!559308))))

(declare-fun mapValue!37089 () ValueCell!11192)

(declare-fun mapRest!37089 () (Array (_ BitVec 32) ValueCell!11192))

(declare-fun mapKey!37089 () (_ BitVec 32))

(assert (=> mapNonEmpty!37089 (= (arr!30165 _values!1551) (store mapRest!37089 mapKey!37089 mapValue!37089))))

(declare-fun b!991589 () Bool)

(declare-fun res!662903 () Bool)

(assert (=> b!991589 (=> (not res!662903) (not e!559310))))

(assert (=> b!991589 (= res!662903 (and (bvsle #b00000000000000000000000000000000 (size!30646 _keys!1945)) (bvslt (size!30646 _keys!1945) #b01111111111111111111111111111111)))))

(declare-fun b!991590 () Bool)

(declare-fun tp_is_empty!23347 () Bool)

(assert (=> b!991590 (= e!559308 tp_is_empty!23347)))

(declare-fun b!991591 () Bool)

(declare-fun e!559311 () Bool)

(assert (=> b!991591 (= e!559309 (and e!559311 mapRes!37089))))

(declare-fun condMapEmpty!37089 () Bool)

(declare-fun mapDefault!37089 () ValueCell!11192)

