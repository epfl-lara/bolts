; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41250 () Bool)

(assert start!41250)

(declare-fun b_free!11085 () Bool)

(declare-fun b_next!11085 () Bool)

(assert (=> start!41250 (= b_free!11085 (not b_next!11085))))

(declare-fun tp!39093 () Bool)

(declare-fun b_and!19423 () Bool)

(assert (=> start!41250 (= tp!39093 b_and!19423)))

(declare-fun mapNonEmpty!20287 () Bool)

(declare-fun mapRes!20287 () Bool)

(declare-fun tp!39094 () Bool)

(declare-fun e!269008 () Bool)

(assert (=> mapNonEmpty!20287 (= mapRes!20287 (and tp!39094 e!269008))))

(declare-datatypes ((V!17669 0))(
  ( (V!17670 (val!6256 Int)) )
))
(declare-datatypes ((ValueCell!5868 0))(
  ( (ValueCellFull!5868 (v!8534 V!17669)) (EmptyCell!5868) )
))
(declare-fun mapValue!20287 () ValueCell!5868)

(declare-datatypes ((array!28609 0))(
  ( (array!28610 (arr!13741 (Array (_ BitVec 32) ValueCell!5868)) (size!14093 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28609)

(declare-fun mapRest!20287 () (Array (_ BitVec 32) ValueCell!5868))

(declare-fun mapKey!20287 () (_ BitVec 32))

(assert (=> mapNonEmpty!20287 (= (arr!13741 _values!549) (store mapRest!20287 mapKey!20287 mapValue!20287))))

(declare-fun b!461242 () Bool)

(declare-fun res!275969 () Bool)

(declare-fun e!269004 () Bool)

(assert (=> b!461242 (=> (not res!275969) (not e!269004))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!461242 (= res!275969 (validMask!0 mask!1025))))

(declare-fun b!461243 () Bool)

(declare-fun e!269006 () Bool)

(declare-fun e!269010 () Bool)

(assert (=> b!461243 (= e!269006 (and e!269010 mapRes!20287))))

(declare-fun condMapEmpty!20287 () Bool)

(declare-fun mapDefault!20287 () ValueCell!5868)

(assert (=> b!461243 (= condMapEmpty!20287 (= (arr!13741 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5868)) mapDefault!20287)))))

(declare-fun b!461244 () Bool)

(declare-fun res!275981 () Bool)

(assert (=> b!461244 (=> (not res!275981) (not e!269004))))

(declare-datatypes ((array!28611 0))(
  ( (array!28612 (arr!13742 (Array (_ BitVec 32) (_ BitVec 64))) (size!14094 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28611)

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!461244 (= res!275981 (and (= (size!14093 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14094 _keys!709) (size!14093 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!461245 () Bool)

(declare-fun e!269007 () Bool)

(assert (=> b!461245 (= e!269007 (not true))))

(declare-fun minValue!515 () V!17669)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17669)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!208952 () array!28609)

(declare-fun v!412 () V!17669)

(declare-fun lt!208950 () array!28611)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!8222 0))(
  ( (tuple2!8223 (_1!4121 (_ BitVec 64)) (_2!4121 V!17669)) )
))
(declare-datatypes ((List!8326 0))(
  ( (Nil!8323) (Cons!8322 (h!9178 tuple2!8222) (t!14276 List!8326)) )
))
(declare-datatypes ((ListLongMap!7149 0))(
  ( (ListLongMap!7150 (toList!3590 List!8326)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1758 (array!28611 array!28609 (_ BitVec 32) (_ BitVec 32) V!17669 V!17669 (_ BitVec 32) Int) ListLongMap!7149)

(declare-fun +!1607 (ListLongMap!7149 tuple2!8222) ListLongMap!7149)

(assert (=> b!461245 (= (getCurrentListMapNoExtraKeys!1758 lt!208950 lt!208952 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1607 (getCurrentListMapNoExtraKeys!1758 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8223 k0!794 v!412)))))

(declare-datatypes ((Unit!13377 0))(
  ( (Unit!13378) )
))
(declare-fun lt!208954 () Unit!13377)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!759 (array!28611 array!28609 (_ BitVec 32) (_ BitVec 32) V!17669 V!17669 (_ BitVec 32) (_ BitVec 64) V!17669 (_ BitVec 32) Int) Unit!13377)

(assert (=> b!461245 (= lt!208954 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!759 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!461246 () Bool)

(declare-fun res!275973 () Bool)

(assert (=> b!461246 (=> (not res!275973) (not e!269004))))

(declare-fun arrayContainsKey!0 (array!28611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!461246 (= res!275973 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!461247 () Bool)

(declare-fun res!275976 () Bool)

(declare-fun e!269009 () Bool)

(assert (=> b!461247 (=> (not res!275976) (not e!269009))))

(assert (=> b!461247 (= res!275976 (bvsle from!863 i!563))))

(declare-fun b!461248 () Bool)

(assert (=> b!461248 (= e!269004 e!269009)))

(declare-fun res!275975 () Bool)

(assert (=> b!461248 (=> (not res!275975) (not e!269009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28611 (_ BitVec 32)) Bool)

(assert (=> b!461248 (= res!275975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208950 mask!1025))))

(assert (=> b!461248 (= lt!208950 (array!28612 (store (arr!13742 _keys!709) i!563 k0!794) (size!14094 _keys!709)))))

(declare-fun b!461249 () Bool)

(declare-fun res!275972 () Bool)

(assert (=> b!461249 (=> (not res!275972) (not e!269004))))

(declare-datatypes ((List!8327 0))(
  ( (Nil!8324) (Cons!8323 (h!9179 (_ BitVec 64)) (t!14277 List!8327)) )
))
(declare-fun arrayNoDuplicates!0 (array!28611 (_ BitVec 32) List!8327) Bool)

(assert (=> b!461249 (= res!275972 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8324))))

(declare-fun b!461250 () Bool)

(declare-fun tp_is_empty!12423 () Bool)

(assert (=> b!461250 (= e!269008 tp_is_empty!12423)))

(declare-fun b!461251 () Bool)

(assert (=> b!461251 (= e!269010 tp_is_empty!12423)))

(declare-fun b!461252 () Bool)

(declare-fun res!275978 () Bool)

(assert (=> b!461252 (=> (not res!275978) (not e!269004))))

(assert (=> b!461252 (= res!275978 (or (= (select (arr!13742 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13742 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!461253 () Bool)

(declare-fun res!275970 () Bool)

(assert (=> b!461253 (=> (not res!275970) (not e!269009))))

(assert (=> b!461253 (= res!275970 (arrayNoDuplicates!0 lt!208950 #b00000000000000000000000000000000 Nil!8324))))

(declare-fun b!461254 () Bool)

(assert (=> b!461254 (= e!269009 e!269007)))

(declare-fun res!275971 () Bool)

(assert (=> b!461254 (=> (not res!275971) (not e!269007))))

(assert (=> b!461254 (= res!275971 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!208951 () ListLongMap!7149)

(assert (=> b!461254 (= lt!208951 (getCurrentListMapNoExtraKeys!1758 lt!208950 lt!208952 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!461254 (= lt!208952 (array!28610 (store (arr!13741 _values!549) i!563 (ValueCellFull!5868 v!412)) (size!14093 _values!549)))))

(declare-fun lt!208953 () ListLongMap!7149)

(assert (=> b!461254 (= lt!208953 (getCurrentListMapNoExtraKeys!1758 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!275974 () Bool)

(assert (=> start!41250 (=> (not res!275974) (not e!269004))))

(assert (=> start!41250 (= res!275974 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14094 _keys!709))))))

(assert (=> start!41250 e!269004))

(assert (=> start!41250 tp_is_empty!12423))

(assert (=> start!41250 tp!39093))

(assert (=> start!41250 true))

(declare-fun array_inv!9924 (array!28609) Bool)

(assert (=> start!41250 (and (array_inv!9924 _values!549) e!269006)))

(declare-fun array_inv!9925 (array!28611) Bool)

(assert (=> start!41250 (array_inv!9925 _keys!709)))

(declare-fun b!461255 () Bool)

(declare-fun res!275980 () Bool)

(assert (=> b!461255 (=> (not res!275980) (not e!269004))))

(assert (=> b!461255 (= res!275980 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14094 _keys!709))))))

(declare-fun b!461256 () Bool)

(declare-fun res!275977 () Bool)

(assert (=> b!461256 (=> (not res!275977) (not e!269004))))

(assert (=> b!461256 (= res!275977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!461257 () Bool)

(declare-fun res!275979 () Bool)

(assert (=> b!461257 (=> (not res!275979) (not e!269004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!461257 (= res!275979 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!20287 () Bool)

(assert (=> mapIsEmpty!20287 mapRes!20287))

(assert (= (and start!41250 res!275974) b!461242))

(assert (= (and b!461242 res!275969) b!461244))

(assert (= (and b!461244 res!275981) b!461256))

(assert (= (and b!461256 res!275977) b!461249))

(assert (= (and b!461249 res!275972) b!461255))

(assert (= (and b!461255 res!275980) b!461257))

(assert (= (and b!461257 res!275979) b!461252))

(assert (= (and b!461252 res!275978) b!461246))

(assert (= (and b!461246 res!275973) b!461248))

(assert (= (and b!461248 res!275975) b!461253))

(assert (= (and b!461253 res!275970) b!461247))

(assert (= (and b!461247 res!275976) b!461254))

(assert (= (and b!461254 res!275971) b!461245))

(assert (= (and b!461243 condMapEmpty!20287) mapIsEmpty!20287))

(assert (= (and b!461243 (not condMapEmpty!20287)) mapNonEmpty!20287))

(get-info :version)

(assert (= (and mapNonEmpty!20287 ((_ is ValueCellFull!5868) mapValue!20287)) b!461250))

(assert (= (and b!461243 ((_ is ValueCellFull!5868) mapDefault!20287)) b!461251))

(assert (= start!41250 b!461243))

(declare-fun m!444433 () Bool)

(assert (=> b!461242 m!444433))

(declare-fun m!444435 () Bool)

(assert (=> b!461256 m!444435))

(declare-fun m!444437 () Bool)

(assert (=> b!461254 m!444437))

(declare-fun m!444439 () Bool)

(assert (=> b!461254 m!444439))

(declare-fun m!444441 () Bool)

(assert (=> b!461254 m!444441))

(declare-fun m!444443 () Bool)

(assert (=> b!461253 m!444443))

(declare-fun m!444445 () Bool)

(assert (=> b!461252 m!444445))

(declare-fun m!444447 () Bool)

(assert (=> b!461257 m!444447))

(declare-fun m!444449 () Bool)

(assert (=> b!461248 m!444449))

(declare-fun m!444451 () Bool)

(assert (=> b!461248 m!444451))

(declare-fun m!444453 () Bool)

(assert (=> start!41250 m!444453))

(declare-fun m!444455 () Bool)

(assert (=> start!41250 m!444455))

(declare-fun m!444457 () Bool)

(assert (=> mapNonEmpty!20287 m!444457))

(declare-fun m!444459 () Bool)

(assert (=> b!461246 m!444459))

(declare-fun m!444461 () Bool)

(assert (=> b!461245 m!444461))

(declare-fun m!444463 () Bool)

(assert (=> b!461245 m!444463))

(assert (=> b!461245 m!444463))

(declare-fun m!444465 () Bool)

(assert (=> b!461245 m!444465))

(declare-fun m!444467 () Bool)

(assert (=> b!461245 m!444467))

(declare-fun m!444469 () Bool)

(assert (=> b!461249 m!444469))

(check-sat (not b!461253) (not b!461248) (not b!461242) (not b!461246) (not b!461254) b_and!19423 tp_is_empty!12423 (not b!461256) (not b!461257) (not b_next!11085) (not start!41250) (not mapNonEmpty!20287) (not b!461245) (not b!461249))
(check-sat b_and!19423 (not b_next!11085))
