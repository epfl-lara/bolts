; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35468 () Bool)

(assert start!35468)

(declare-fun b_free!7847 () Bool)

(declare-fun b_next!7847 () Bool)

(assert (=> start!35468 (= b_free!7847 (not b_next!7847))))

(declare-fun tp!27327 () Bool)

(declare-fun b_and!15107 () Bool)

(assert (=> start!35468 (= tp!27327 b_and!15107)))

(declare-fun b!355041 () Bool)

(declare-fun res!196996 () Bool)

(declare-fun e!217533 () Bool)

(assert (=> b!355041 (=> (not res!196996) (not e!217533))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19373 0))(
  ( (array!19374 (arr!9177 (Array (_ BitVec 32) (_ BitVec 64))) (size!9529 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19373)

(declare-datatypes ((V!11527 0))(
  ( (V!11528 (val!4001 Int)) )
))
(declare-datatypes ((ValueCell!3613 0))(
  ( (ValueCellFull!3613 (v!6191 V!11527)) (EmptyCell!3613) )
))
(declare-datatypes ((array!19375 0))(
  ( (array!19376 (arr!9178 (Array (_ BitVec 32) ValueCell!3613)) (size!9530 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19375)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355041 (= res!196996 (and (= (size!9530 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9529 _keys!1456) (size!9530 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355042 () Bool)

(declare-fun res!197000 () Bool)

(assert (=> b!355042 (=> (not res!197000) (not e!217533))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!355042 (= res!197000 (= (select (arr!9177 _keys!1456) from!1805) k!1077))))

(declare-fun res!197001 () Bool)

(assert (=> start!35468 (=> (not res!197001) (not e!217533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35468 (= res!197001 (validMask!0 mask!1842))))

(assert (=> start!35468 e!217533))

(declare-fun tp_is_empty!7913 () Bool)

(assert (=> start!35468 tp_is_empty!7913))

(assert (=> start!35468 true))

(assert (=> start!35468 tp!27327))

(declare-fun array_inv!6756 (array!19373) Bool)

(assert (=> start!35468 (array_inv!6756 _keys!1456)))

(declare-fun e!217535 () Bool)

(declare-fun array_inv!6757 (array!19375) Bool)

(assert (=> start!35468 (and (array_inv!6757 _values!1208) e!217535)))

(declare-fun b!355043 () Bool)

(declare-fun res!196994 () Bool)

(assert (=> b!355043 (=> (not res!196994) (not e!217533))))

(assert (=> b!355043 (= res!196994 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9529 _keys!1456))))))

(declare-fun b!355044 () Bool)

(assert (=> b!355044 (= e!217533 (not true))))

(declare-fun minValue!1150 () V!11527)

(declare-fun defaultEntry!1216 () Int)

(declare-fun zeroValue!1150 () V!11527)

(declare-datatypes ((tuple2!5682 0))(
  ( (tuple2!5683 (_1!2851 (_ BitVec 64)) (_2!2851 V!11527)) )
))
(declare-datatypes ((List!5346 0))(
  ( (Nil!5343) (Cons!5342 (h!6198 tuple2!5682) (t!10504 List!5346)) )
))
(declare-datatypes ((ListLongMap!4609 0))(
  ( (ListLongMap!4610 (toList!2320 List!5346)) )
))
(declare-fun contains!2396 (ListLongMap!4609 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1837 (array!19373 array!19375 (_ BitVec 32) (_ BitVec 32) V!11527 V!11527 (_ BitVec 32) Int) ListLongMap!4609)

(assert (=> b!355044 (contains!2396 (getCurrentListMap!1837 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9177 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10949 0))(
  ( (Unit!10950) )
))
(declare-fun lt!165745 () Unit!10949)

(declare-fun lemmaValidKeyInArrayIsInListMap!187 (array!19373 array!19375 (_ BitVec 32) (_ BitVec 32) V!11527 V!11527 (_ BitVec 32) Int) Unit!10949)

(assert (=> b!355044 (= lt!165745 (lemmaValidKeyInArrayIsInListMap!187 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!355045 () Bool)

(declare-fun e!217534 () Bool)

(assert (=> b!355045 (= e!217534 tp_is_empty!7913)))

(declare-fun b!355046 () Bool)

(declare-fun mapRes!13377 () Bool)

(assert (=> b!355046 (= e!217535 (and e!217534 mapRes!13377))))

(declare-fun condMapEmpty!13377 () Bool)

(declare-fun mapDefault!13377 () ValueCell!3613)

