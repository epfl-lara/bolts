; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37054 () Bool)

(assert start!37054)

(declare-fun b_free!8173 () Bool)

(declare-fun b_next!8173 () Bool)

(assert (=> start!37054 (= b_free!8173 (not b_next!8173))))

(declare-fun tp!29235 () Bool)

(declare-fun b_and!15433 () Bool)

(assert (=> start!37054 (= tp!29235 b_and!15433)))

(declare-fun b!372218 () Bool)

(declare-fun e!227059 () Bool)

(assert (=> b!372218 (= e!227059 (not true))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12867 0))(
  ( (V!12868 (val!4455 Int)) )
))
(declare-datatypes ((ValueCell!4067 0))(
  ( (ValueCellFull!4067 (v!6648 V!12867)) (EmptyCell!4067) )
))
(declare-datatypes ((array!21551 0))(
  ( (array!21552 (arr!10241 (Array (_ BitVec 32) ValueCell!4067)) (size!10593 (_ BitVec 32))) )
))
(declare-fun lt!170701 () array!21551)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5886 0))(
  ( (tuple2!5887 (_1!2953 (_ BitVec 64)) (_2!2953 V!12867)) )
))
(declare-datatypes ((List!5760 0))(
  ( (Nil!5757) (Cons!5756 (h!6612 tuple2!5886) (t!10918 List!5760)) )
))
(declare-datatypes ((ListLongMap!4813 0))(
  ( (ListLongMap!4814 (toList!2422 List!5760)) )
))
(declare-fun lt!170698 () ListLongMap!4813)

(declare-fun zeroValue!472 () V!12867)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12867)

(declare-datatypes ((array!21553 0))(
  ( (array!21554 (arr!10242 (Array (_ BitVec 32) (_ BitVec 64))) (size!10594 (_ BitVec 32))) )
))
(declare-fun lt!170704 () array!21553)

(declare-fun getCurrentListMap!1872 (array!21553 array!21551 (_ BitVec 32) (_ BitVec 32) V!12867 V!12867 (_ BitVec 32) Int) ListLongMap!4813)

(assert (=> b!372218 (= lt!170698 (getCurrentListMap!1872 lt!170704 lt!170701 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170703 () ListLongMap!4813)

(declare-fun lt!170699 () ListLongMap!4813)

(assert (=> b!372218 (and (= lt!170703 lt!170699) (= lt!170699 lt!170703))))

(declare-fun v!373 () V!12867)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!170702 () ListLongMap!4813)

(declare-fun +!763 (ListLongMap!4813 tuple2!5886) ListLongMap!4813)

(assert (=> b!372218 (= lt!170699 (+!763 lt!170702 (tuple2!5887 k!778 v!373)))))

(declare-datatypes ((Unit!11431 0))(
  ( (Unit!11432) )
))
(declare-fun lt!170700 () Unit!11431)

(declare-fun _keys!658 () array!21553)

(declare-fun _values!506 () array!21551)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!23 (array!21553 array!21551 (_ BitVec 32) (_ BitVec 32) V!12867 V!12867 (_ BitVec 32) (_ BitVec 64) V!12867 (_ BitVec 32) Int) Unit!11431)

(assert (=> b!372218 (= lt!170700 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!23 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!690 (array!21553 array!21551 (_ BitVec 32) (_ BitVec 32) V!12867 V!12867 (_ BitVec 32) Int) ListLongMap!4813)

(assert (=> b!372218 (= lt!170703 (getCurrentListMapNoExtraKeys!690 lt!170704 lt!170701 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372218 (= lt!170701 (array!21552 (store (arr!10241 _values!506) i!548 (ValueCellFull!4067 v!373)) (size!10593 _values!506)))))

(assert (=> b!372218 (= lt!170702 (getCurrentListMapNoExtraKeys!690 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372219 () Bool)

(declare-fun res!209504 () Bool)

(assert (=> b!372219 (=> (not res!209504) (not e!227059))))

(declare-datatypes ((List!5761 0))(
  ( (Nil!5758) (Cons!5757 (h!6613 (_ BitVec 64)) (t!10919 List!5761)) )
))
(declare-fun arrayNoDuplicates!0 (array!21553 (_ BitVec 32) List!5761) Bool)

(assert (=> b!372219 (= res!209504 (arrayNoDuplicates!0 lt!170704 #b00000000000000000000000000000000 Nil!5758))))

(declare-fun b!372220 () Bool)

(declare-fun res!209497 () Bool)

(declare-fun e!227061 () Bool)

(assert (=> b!372220 (=> (not res!209497) (not e!227061))))

(assert (=> b!372220 (= res!209497 (and (= (size!10593 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10594 _keys!658) (size!10593 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14796 () Bool)

(declare-fun mapRes!14796 () Bool)

(declare-fun tp!29234 () Bool)

(declare-fun e!227062 () Bool)

(assert (=> mapNonEmpty!14796 (= mapRes!14796 (and tp!29234 e!227062))))

(declare-fun mapValue!14796 () ValueCell!4067)

(declare-fun mapKey!14796 () (_ BitVec 32))

(declare-fun mapRest!14796 () (Array (_ BitVec 32) ValueCell!4067))

(assert (=> mapNonEmpty!14796 (= (arr!10241 _values!506) (store mapRest!14796 mapKey!14796 mapValue!14796))))

(declare-fun b!372221 () Bool)

(declare-fun res!209500 () Bool)

(assert (=> b!372221 (=> (not res!209500) (not e!227061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21553 (_ BitVec 32)) Bool)

(assert (=> b!372221 (= res!209500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372222 () Bool)

(declare-fun res!209496 () Bool)

(assert (=> b!372222 (=> (not res!209496) (not e!227061))))

(declare-fun arrayContainsKey!0 (array!21553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372222 (= res!209496 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!372223 () Bool)

(assert (=> b!372223 (= e!227061 e!227059)))

(declare-fun res!209495 () Bool)

(assert (=> b!372223 (=> (not res!209495) (not e!227059))))

(assert (=> b!372223 (= res!209495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170704 mask!970))))

(assert (=> b!372223 (= lt!170704 (array!21554 (store (arr!10242 _keys!658) i!548 k!778) (size!10594 _keys!658)))))

(declare-fun b!372224 () Bool)

(declare-fun res!209502 () Bool)

(assert (=> b!372224 (=> (not res!209502) (not e!227061))))

(assert (=> b!372224 (= res!209502 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5758))))

(declare-fun b!372225 () Bool)

(declare-fun res!209501 () Bool)

(assert (=> b!372225 (=> (not res!209501) (not e!227061))))

(assert (=> b!372225 (= res!209501 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10594 _keys!658))))))

(declare-fun res!209503 () Bool)

(assert (=> start!37054 (=> (not res!209503) (not e!227061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37054 (= res!209503 (validMask!0 mask!970))))

(assert (=> start!37054 e!227061))

(declare-fun e!227064 () Bool)

(declare-fun array_inv!7562 (array!21551) Bool)

(assert (=> start!37054 (and (array_inv!7562 _values!506) e!227064)))

(assert (=> start!37054 tp!29235))

(assert (=> start!37054 true))

(declare-fun tp_is_empty!8821 () Bool)

(assert (=> start!37054 tp_is_empty!8821))

(declare-fun array_inv!7563 (array!21553) Bool)

(assert (=> start!37054 (array_inv!7563 _keys!658)))

(declare-fun b!372226 () Bool)

(declare-fun e!227063 () Bool)

(assert (=> b!372226 (= e!227063 tp_is_empty!8821)))

(declare-fun b!372227 () Bool)

(declare-fun res!209498 () Bool)

(assert (=> b!372227 (=> (not res!209498) (not e!227061))))

(assert (=> b!372227 (= res!209498 (or (= (select (arr!10242 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10242 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14796 () Bool)

(assert (=> mapIsEmpty!14796 mapRes!14796))

(declare-fun b!372228 () Bool)

(assert (=> b!372228 (= e!227062 tp_is_empty!8821)))

(declare-fun b!372229 () Bool)

(assert (=> b!372229 (= e!227064 (and e!227063 mapRes!14796))))

(declare-fun condMapEmpty!14796 () Bool)

(declare-fun mapDefault!14796 () ValueCell!4067)

