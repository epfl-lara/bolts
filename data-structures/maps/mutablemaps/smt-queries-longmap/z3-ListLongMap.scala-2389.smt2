; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37806 () Bool)

(assert start!37806)

(declare-fun b_free!8901 () Bool)

(declare-fun b_next!8901 () Bool)

(assert (=> start!37806 (= b_free!8901 (not b_next!8901))))

(declare-fun tp!31454 () Bool)

(declare-fun b_and!16161 () Bool)

(assert (=> start!37806 (= tp!31454 b_and!16161)))

(declare-fun b!388079 () Bool)

(declare-fun e!235172 () Bool)

(declare-fun tp_is_empty!9573 () Bool)

(assert (=> b!388079 (= e!235172 tp_is_empty!9573)))

(declare-fun b!388080 () Bool)

(declare-fun res!221981 () Bool)

(declare-fun e!235168 () Bool)

(assert (=> b!388080 (=> (not res!221981) (not e!235168))))

(declare-datatypes ((array!23015 0))(
  ( (array!23016 (arr!10973 (Array (_ BitVec 32) (_ BitVec 64))) (size!11325 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23015)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!388080 (= res!221981 (or (= (select (arr!10973 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10973 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!388081 () Bool)

(declare-fun res!221976 () Bool)

(assert (=> b!388081 (=> (not res!221976) (not e!235168))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388081 (= res!221976 (validKeyInArray!0 k0!778))))

(declare-fun b!388082 () Bool)

(declare-fun res!221977 () Bool)

(assert (=> b!388082 (=> (not res!221977) (not e!235168))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23015 (_ BitVec 32)) Bool)

(assert (=> b!388082 (= res!221977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!388083 () Bool)

(declare-fun res!221972 () Bool)

(assert (=> b!388083 (=> (not res!221972) (not e!235168))))

(declare-fun arrayContainsKey!0 (array!23015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388083 (= res!221972 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!221980 () Bool)

(assert (=> start!37806 (=> (not res!221980) (not e!235168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37806 (= res!221980 (validMask!0 mask!970))))

(assert (=> start!37806 e!235168))

(declare-datatypes ((V!13869 0))(
  ( (V!13870 (val!4831 Int)) )
))
(declare-datatypes ((ValueCell!4443 0))(
  ( (ValueCellFull!4443 (v!7024 V!13869)) (EmptyCell!4443) )
))
(declare-datatypes ((array!23017 0))(
  ( (array!23018 (arr!10974 (Array (_ BitVec 32) ValueCell!4443)) (size!11326 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23017)

(declare-fun e!235173 () Bool)

(declare-fun array_inv!8042 (array!23017) Bool)

(assert (=> start!37806 (and (array_inv!8042 _values!506) e!235173)))

(assert (=> start!37806 tp!31454))

(assert (=> start!37806 true))

(assert (=> start!37806 tp_is_empty!9573))

(declare-fun array_inv!8043 (array!23015) Bool)

(assert (=> start!37806 (array_inv!8043 _keys!658)))

(declare-fun b!388084 () Bool)

(declare-fun e!235170 () Bool)

(assert (=> b!388084 (= e!235170 tp_is_empty!9573)))

(declare-fun b!388085 () Bool)

(declare-fun e!235171 () Bool)

(assert (=> b!388085 (= e!235171 (not (bvslt i!548 (size!11326 _values!506))))))

(declare-datatypes ((tuple2!6436 0))(
  ( (tuple2!6437 (_1!3228 (_ BitVec 64)) (_2!3228 V!13869)) )
))
(declare-datatypes ((List!6320 0))(
  ( (Nil!6317) (Cons!6316 (h!7172 tuple2!6436) (t!11478 List!6320)) )
))
(declare-datatypes ((ListLongMap!5363 0))(
  ( (ListLongMap!5364 (toList!2697 List!6320)) )
))
(declare-fun lt!182240 () ListLongMap!5363)

(declare-fun lt!182241 () ListLongMap!5363)

(assert (=> b!388085 (and (= lt!182240 lt!182241) (= lt!182241 lt!182240))))

(declare-fun v!373 () V!13869)

(declare-fun lt!182242 () ListLongMap!5363)

(declare-fun +!995 (ListLongMap!5363 tuple2!6436) ListLongMap!5363)

(assert (=> b!388085 (= lt!182241 (+!995 lt!182242 (tuple2!6437 k0!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13869)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((Unit!11879 0))(
  ( (Unit!11880) )
))
(declare-fun lt!182238 () Unit!11879)

(declare-fun minValue!472 () V!13869)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!226 (array!23015 array!23017 (_ BitVec 32) (_ BitVec 32) V!13869 V!13869 (_ BitVec 32) (_ BitVec 64) V!13869 (_ BitVec 32) Int) Unit!11879)

(assert (=> b!388085 (= lt!182238 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!226 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182239 () array!23015)

(declare-fun getCurrentListMapNoExtraKeys!931 (array!23015 array!23017 (_ BitVec 32) (_ BitVec 32) V!13869 V!13869 (_ BitVec 32) Int) ListLongMap!5363)

(assert (=> b!388085 (= lt!182240 (getCurrentListMapNoExtraKeys!931 lt!182239 (array!23018 (store (arr!10974 _values!506) i!548 (ValueCellFull!4443 v!373)) (size!11326 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388085 (= lt!182242 (getCurrentListMapNoExtraKeys!931 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15924 () Bool)

(declare-fun mapRes!15924 () Bool)

(assert (=> mapIsEmpty!15924 mapRes!15924))

(declare-fun b!388086 () Bool)

(assert (=> b!388086 (= e!235173 (and e!235170 mapRes!15924))))

(declare-fun condMapEmpty!15924 () Bool)

(declare-fun mapDefault!15924 () ValueCell!4443)

(assert (=> b!388086 (= condMapEmpty!15924 (= (arr!10974 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4443)) mapDefault!15924)))))

(declare-fun mapNonEmpty!15924 () Bool)

(declare-fun tp!31455 () Bool)

(assert (=> mapNonEmpty!15924 (= mapRes!15924 (and tp!31455 e!235172))))

(declare-fun mapRest!15924 () (Array (_ BitVec 32) ValueCell!4443))

(declare-fun mapKey!15924 () (_ BitVec 32))

(declare-fun mapValue!15924 () ValueCell!4443)

(assert (=> mapNonEmpty!15924 (= (arr!10974 _values!506) (store mapRest!15924 mapKey!15924 mapValue!15924))))

(declare-fun b!388087 () Bool)

(declare-fun res!221975 () Bool)

(assert (=> b!388087 (=> (not res!221975) (not e!235171))))

(declare-datatypes ((List!6321 0))(
  ( (Nil!6318) (Cons!6317 (h!7173 (_ BitVec 64)) (t!11479 List!6321)) )
))
(declare-fun arrayNoDuplicates!0 (array!23015 (_ BitVec 32) List!6321) Bool)

(assert (=> b!388087 (= res!221975 (arrayNoDuplicates!0 lt!182239 #b00000000000000000000000000000000 Nil!6318))))

(declare-fun b!388088 () Bool)

(declare-fun res!221973 () Bool)

(assert (=> b!388088 (=> (not res!221973) (not e!235168))))

(assert (=> b!388088 (= res!221973 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6318))))

(declare-fun b!388089 () Bool)

(declare-fun res!221974 () Bool)

(assert (=> b!388089 (=> (not res!221974) (not e!235168))))

(assert (=> b!388089 (= res!221974 (and (= (size!11326 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11325 _keys!658) (size!11326 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!388090 () Bool)

(assert (=> b!388090 (= e!235168 e!235171)))

(declare-fun res!221979 () Bool)

(assert (=> b!388090 (=> (not res!221979) (not e!235171))))

(assert (=> b!388090 (= res!221979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182239 mask!970))))

(assert (=> b!388090 (= lt!182239 (array!23016 (store (arr!10973 _keys!658) i!548 k0!778) (size!11325 _keys!658)))))

(declare-fun b!388091 () Bool)

(declare-fun res!221978 () Bool)

(assert (=> b!388091 (=> (not res!221978) (not e!235168))))

(assert (=> b!388091 (= res!221978 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11325 _keys!658))))))

(assert (= (and start!37806 res!221980) b!388089))

(assert (= (and b!388089 res!221974) b!388082))

(assert (= (and b!388082 res!221977) b!388088))

(assert (= (and b!388088 res!221973) b!388091))

(assert (= (and b!388091 res!221978) b!388081))

(assert (= (and b!388081 res!221976) b!388080))

(assert (= (and b!388080 res!221981) b!388083))

(assert (= (and b!388083 res!221972) b!388090))

(assert (= (and b!388090 res!221979) b!388087))

(assert (= (and b!388087 res!221975) b!388085))

(assert (= (and b!388086 condMapEmpty!15924) mapIsEmpty!15924))

(assert (= (and b!388086 (not condMapEmpty!15924)) mapNonEmpty!15924))

(get-info :version)

(assert (= (and mapNonEmpty!15924 ((_ is ValueCellFull!4443) mapValue!15924)) b!388079))

(assert (= (and b!388086 ((_ is ValueCellFull!4443) mapDefault!15924)) b!388084))

(assert (= start!37806 b!388086))

(declare-fun m!384069 () Bool)

(assert (=> mapNonEmpty!15924 m!384069))

(declare-fun m!384071 () Bool)

(assert (=> b!388085 m!384071))

(declare-fun m!384073 () Bool)

(assert (=> b!388085 m!384073))

(declare-fun m!384075 () Bool)

(assert (=> b!388085 m!384075))

(declare-fun m!384077 () Bool)

(assert (=> b!388085 m!384077))

(declare-fun m!384079 () Bool)

(assert (=> b!388085 m!384079))

(declare-fun m!384081 () Bool)

(assert (=> start!37806 m!384081))

(declare-fun m!384083 () Bool)

(assert (=> start!37806 m!384083))

(declare-fun m!384085 () Bool)

(assert (=> start!37806 m!384085))

(declare-fun m!384087 () Bool)

(assert (=> b!388082 m!384087))

(declare-fun m!384089 () Bool)

(assert (=> b!388083 m!384089))

(declare-fun m!384091 () Bool)

(assert (=> b!388087 m!384091))

(declare-fun m!384093 () Bool)

(assert (=> b!388080 m!384093))

(declare-fun m!384095 () Bool)

(assert (=> b!388081 m!384095))

(declare-fun m!384097 () Bool)

(assert (=> b!388090 m!384097))

(declare-fun m!384099 () Bool)

(assert (=> b!388090 m!384099))

(declare-fun m!384101 () Bool)

(assert (=> b!388088 m!384101))

(check-sat (not b!388085) (not b_next!8901) (not start!37806) (not b!388081) b_and!16161 (not mapNonEmpty!15924) tp_is_empty!9573 (not b!388082) (not b!388087) (not b!388088) (not b!388083) (not b!388090))
(check-sat b_and!16161 (not b_next!8901))
