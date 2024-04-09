; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39048 () Bool)

(assert start!39048)

(declare-fun b_free!9307 () Bool)

(declare-fun b_next!9307 () Bool)

(assert (=> start!39048 (= b_free!9307 (not b_next!9307))))

(declare-fun tp!33450 () Bool)

(declare-fun b_and!16711 () Bool)

(assert (=> start!39048 (= tp!33450 b_and!16711)))

(declare-fun b!409317 () Bool)

(declare-fun res!237104 () Bool)

(declare-fun e!245533 () Bool)

(assert (=> b!409317 (=> (not res!237104) (not e!245533))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409317 (= res!237104 (validMask!0 mask!1025))))

(declare-fun b!409318 () Bool)

(declare-fun res!237106 () Bool)

(declare-fun e!245531 () Bool)

(assert (=> b!409318 (=> (not res!237106) (not e!245531))))

(declare-datatypes ((array!24771 0))(
  ( (array!24772 (arr!11832 (Array (_ BitVec 32) (_ BitVec 64))) (size!12184 (_ BitVec 32))) )
))
(declare-fun lt!188918 () array!24771)

(declare-datatypes ((List!6830 0))(
  ( (Nil!6827) (Cons!6826 (h!7682 (_ BitVec 64)) (t!12012 List!6830)) )
))
(declare-fun arrayNoDuplicates!0 (array!24771 (_ BitVec 32) List!6830) Bool)

(assert (=> b!409318 (= res!237106 (arrayNoDuplicates!0 lt!188918 #b00000000000000000000000000000000 Nil!6827))))

(declare-fun b!409319 () Bool)

(declare-fun e!245530 () Bool)

(declare-fun tp_is_empty!10459 () Bool)

(assert (=> b!409319 (= e!245530 tp_is_empty!10459)))

(declare-fun b!409320 () Bool)

(declare-fun res!237114 () Bool)

(assert (=> b!409320 (=> (not res!237114) (not e!245531))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409320 (= res!237114 (bvsle from!863 i!563))))

(declare-fun res!237105 () Bool)

(assert (=> start!39048 (=> (not res!237105) (not e!245533))))

(declare-fun _keys!709 () array!24771)

(assert (=> start!39048 (= res!237105 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12184 _keys!709))))))

(assert (=> start!39048 e!245533))

(assert (=> start!39048 tp_is_empty!10459))

(assert (=> start!39048 tp!33450))

(assert (=> start!39048 true))

(declare-datatypes ((V!15051 0))(
  ( (V!15052 (val!5274 Int)) )
))
(declare-datatypes ((ValueCell!4886 0))(
  ( (ValueCellFull!4886 (v!7517 V!15051)) (EmptyCell!4886) )
))
(declare-datatypes ((array!24773 0))(
  ( (array!24774 (arr!11833 (Array (_ BitVec 32) ValueCell!4886)) (size!12185 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24773)

(declare-fun e!245528 () Bool)

(declare-fun array_inv!8638 (array!24773) Bool)

(assert (=> start!39048 (and (array_inv!8638 _values!549) e!245528)))

(declare-fun array_inv!8639 (array!24771) Bool)

(assert (=> start!39048 (array_inv!8639 _keys!709)))

(declare-fun b!409321 () Bool)

(assert (=> b!409321 (= e!245533 e!245531)))

(declare-fun res!237109 () Bool)

(assert (=> b!409321 (=> (not res!237109) (not e!245531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24771 (_ BitVec 32)) Bool)

(assert (=> b!409321 (= res!237109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188918 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!409321 (= lt!188918 (array!24772 (store (arr!11832 _keys!709) i!563 k!794) (size!12184 _keys!709)))))

(declare-fun mapNonEmpty!17310 () Bool)

(declare-fun mapRes!17310 () Bool)

(declare-fun tp!33449 () Bool)

(declare-fun e!245532 () Bool)

(assert (=> mapNonEmpty!17310 (= mapRes!17310 (and tp!33449 e!245532))))

(declare-fun mapValue!17310 () ValueCell!4886)

(declare-fun mapKey!17310 () (_ BitVec 32))

(declare-fun mapRest!17310 () (Array (_ BitVec 32) ValueCell!4886))

(assert (=> mapNonEmpty!17310 (= (arr!11833 _values!549) (store mapRest!17310 mapKey!17310 mapValue!17310))))

(declare-fun b!409322 () Bool)

(assert (=> b!409322 (= e!245531 false)))

(declare-fun minValue!515 () V!15051)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15051)

(declare-datatypes ((tuple2!6782 0))(
  ( (tuple2!6783 (_1!3401 (_ BitVec 64)) (_2!3401 V!15051)) )
))
(declare-datatypes ((List!6831 0))(
  ( (Nil!6828) (Cons!6827 (h!7683 tuple2!6782) (t!12013 List!6831)) )
))
(declare-datatypes ((ListLongMap!5709 0))(
  ( (ListLongMap!5710 (toList!2870 List!6831)) )
))
(declare-fun lt!188919 () ListLongMap!5709)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1080 (array!24771 array!24773 (_ BitVec 32) (_ BitVec 32) V!15051 V!15051 (_ BitVec 32) Int) ListLongMap!5709)

(assert (=> b!409322 (= lt!188919 (getCurrentListMapNoExtraKeys!1080 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409323 () Bool)

(declare-fun res!237107 () Bool)

(assert (=> b!409323 (=> (not res!237107) (not e!245533))))

(assert (=> b!409323 (= res!237107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409324 () Bool)

(declare-fun res!237108 () Bool)

(assert (=> b!409324 (=> (not res!237108) (not e!245533))))

(assert (=> b!409324 (= res!237108 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6827))))

(declare-fun b!409325 () Bool)

(declare-fun res!237113 () Bool)

(assert (=> b!409325 (=> (not res!237113) (not e!245533))))

(assert (=> b!409325 (= res!237113 (and (= (size!12185 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12184 _keys!709) (size!12185 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409326 () Bool)

(declare-fun res!237103 () Bool)

(assert (=> b!409326 (=> (not res!237103) (not e!245533))))

(assert (=> b!409326 (= res!237103 (or (= (select (arr!11832 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11832 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409327 () Bool)

(assert (=> b!409327 (= e!245532 tp_is_empty!10459)))

(declare-fun b!409328 () Bool)

(declare-fun res!237110 () Bool)

(assert (=> b!409328 (=> (not res!237110) (not e!245533))))

(assert (=> b!409328 (= res!237110 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12184 _keys!709))))))

(declare-fun b!409329 () Bool)

(declare-fun res!237112 () Bool)

(assert (=> b!409329 (=> (not res!237112) (not e!245533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409329 (= res!237112 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!17310 () Bool)

(assert (=> mapIsEmpty!17310 mapRes!17310))

(declare-fun b!409330 () Bool)

(declare-fun res!237111 () Bool)

(assert (=> b!409330 (=> (not res!237111) (not e!245533))))

(declare-fun arrayContainsKey!0 (array!24771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409330 (= res!237111 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!409331 () Bool)

(assert (=> b!409331 (= e!245528 (and e!245530 mapRes!17310))))

(declare-fun condMapEmpty!17310 () Bool)

(declare-fun mapDefault!17310 () ValueCell!4886)

