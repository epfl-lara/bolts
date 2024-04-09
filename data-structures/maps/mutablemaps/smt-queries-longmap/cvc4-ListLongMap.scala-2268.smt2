; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37082 () Bool)

(assert start!37082)

(declare-fun b_free!8201 () Bool)

(declare-fun b_next!8201 () Bool)

(assert (=> start!37082 (= b_free!8201 (not b_next!8201))))

(declare-fun tp!29319 () Bool)

(declare-fun b_and!15461 () Bool)

(assert (=> start!37082 (= tp!29319 b_and!15461)))

(declare-fun b!372764 () Bool)

(declare-fun res!209917 () Bool)

(declare-fun e!227316 () Bool)

(assert (=> b!372764 (=> (not res!209917) (not e!227316))))

(declare-datatypes ((array!21605 0))(
  ( (array!21606 (arr!10268 (Array (_ BitVec 32) (_ BitVec 64))) (size!10620 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21605)

(declare-datatypes ((List!5781 0))(
  ( (Nil!5778) (Cons!5777 (h!6633 (_ BitVec 64)) (t!10939 List!5781)) )
))
(declare-fun arrayNoDuplicates!0 (array!21605 (_ BitVec 32) List!5781) Bool)

(assert (=> b!372764 (= res!209917 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5778))))

(declare-fun b!372765 () Bool)

(declare-fun res!209915 () Bool)

(assert (=> b!372765 (=> (not res!209915) (not e!227316))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372765 (= res!209915 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10620 _keys!658))))))

(declare-fun b!372766 () Bool)

(declare-fun e!227312 () Bool)

(declare-fun tp_is_empty!8849 () Bool)

(assert (=> b!372766 (= e!227312 tp_is_empty!8849)))

(declare-fun b!372767 () Bool)

(declare-fun res!209916 () Bool)

(assert (=> b!372767 (=> (not res!209916) (not e!227316))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12903 0))(
  ( (V!12904 (val!4469 Int)) )
))
(declare-datatypes ((ValueCell!4081 0))(
  ( (ValueCellFull!4081 (v!6662 V!12903)) (EmptyCell!4081) )
))
(declare-datatypes ((array!21607 0))(
  ( (array!21608 (arr!10269 (Array (_ BitVec 32) ValueCell!4081)) (size!10621 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21607)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!372767 (= res!209916 (and (= (size!10621 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10620 _keys!658) (size!10621 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372768 () Bool)

(declare-fun e!227314 () Bool)

(assert (=> b!372768 (= e!227314 (not (bvsle #b00000000000000000000000000000000 (size!10620 _keys!658))))))

(declare-datatypes ((tuple2!5906 0))(
  ( (tuple2!5907 (_1!2963 (_ BitVec 64)) (_2!2963 V!12903)) )
))
(declare-datatypes ((List!5782 0))(
  ( (Nil!5779) (Cons!5778 (h!6634 tuple2!5906) (t!10940 List!5782)) )
))
(declare-datatypes ((ListLongMap!4833 0))(
  ( (ListLongMap!4834 (toList!2432 List!5782)) )
))
(declare-fun lt!170993 () ListLongMap!4833)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!170992 () array!21605)

(declare-fun zeroValue!472 () V!12903)

(declare-fun lt!170994 () array!21607)

(declare-fun minValue!472 () V!12903)

(declare-fun getCurrentListMap!1882 (array!21605 array!21607 (_ BitVec 32) (_ BitVec 32) V!12903 V!12903 (_ BitVec 32) Int) ListLongMap!4833)

(assert (=> b!372768 (= lt!170993 (getCurrentListMap!1882 lt!170992 lt!170994 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170998 () ListLongMap!4833)

(declare-fun lt!170996 () ListLongMap!4833)

(assert (=> b!372768 (and (= lt!170998 lt!170996) (= lt!170996 lt!170998))))

(declare-fun v!373 () V!12903)

(declare-fun lt!170995 () ListLongMap!4833)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!773 (ListLongMap!4833 tuple2!5906) ListLongMap!4833)

(assert (=> b!372768 (= lt!170996 (+!773 lt!170995 (tuple2!5907 k!778 v!373)))))

(declare-datatypes ((Unit!11451 0))(
  ( (Unit!11452) )
))
(declare-fun lt!170997 () Unit!11451)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!33 (array!21605 array!21607 (_ BitVec 32) (_ BitVec 32) V!12903 V!12903 (_ BitVec 32) (_ BitVec 64) V!12903 (_ BitVec 32) Int) Unit!11451)

(assert (=> b!372768 (= lt!170997 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!33 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!700 (array!21605 array!21607 (_ BitVec 32) (_ BitVec 32) V!12903 V!12903 (_ BitVec 32) Int) ListLongMap!4833)

(assert (=> b!372768 (= lt!170998 (getCurrentListMapNoExtraKeys!700 lt!170992 lt!170994 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372768 (= lt!170994 (array!21608 (store (arr!10269 _values!506) i!548 (ValueCellFull!4081 v!373)) (size!10621 _values!506)))))

(assert (=> b!372768 (= lt!170995 (getCurrentListMapNoExtraKeys!700 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372769 () Bool)

(declare-fun e!227313 () Bool)

(declare-fun e!227311 () Bool)

(declare-fun mapRes!14838 () Bool)

(assert (=> b!372769 (= e!227313 (and e!227311 mapRes!14838))))

(declare-fun condMapEmpty!14838 () Bool)

(declare-fun mapDefault!14838 () ValueCell!4081)

