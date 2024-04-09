; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41146 () Bool)

(assert start!41146)

(declare-fun b_free!11007 () Bool)

(declare-fun b_next!11007 () Bool)

(assert (=> start!41146 (= b_free!11007 (not b_next!11007))))

(declare-fun tp!38856 () Bool)

(declare-fun b_and!19271 () Bool)

(assert (=> start!41146 (= tp!38856 b_and!19271)))

(declare-fun b!458852 () Bool)

(declare-fun e!267871 () Bool)

(declare-fun tp_is_empty!12345 () Bool)

(assert (=> b!458852 (= e!267871 tp_is_empty!12345)))

(declare-fun b!458853 () Bool)

(declare-datatypes ((Unit!13273 0))(
  ( (Unit!13274) )
))
(declare-fun e!267865 () Unit!13273)

(declare-fun Unit!13275 () Unit!13273)

(assert (=> b!458853 (= e!267865 Unit!13275)))

(declare-fun lt!207624 () Unit!13273)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((array!28457 0))(
  ( (array!28458 (arr!13666 (Array (_ BitVec 32) (_ BitVec 64))) (size!14018 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28457)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28457 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13273)

(assert (=> b!458853 (= lt!207624 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!458853 false))

(declare-fun b!458854 () Bool)

(declare-fun e!267869 () Bool)

(declare-fun e!267868 () Bool)

(assert (=> b!458854 (= e!267869 e!267868)))

(declare-fun res!274249 () Bool)

(assert (=> b!458854 (=> (not res!274249) (not e!267868))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!458854 (= res!274249 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17565 0))(
  ( (V!17566 (val!6217 Int)) )
))
(declare-fun minValue!515 () V!17565)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17565)

(declare-datatypes ((tuple2!8158 0))(
  ( (tuple2!8159 (_1!4089 (_ BitVec 64)) (_2!4089 V!17565)) )
))
(declare-datatypes ((List!8262 0))(
  ( (Nil!8259) (Cons!8258 (h!9114 tuple2!8158) (t!14156 List!8262)) )
))
(declare-datatypes ((ListLongMap!7085 0))(
  ( (ListLongMap!7086 (toList!3558 List!8262)) )
))
(declare-fun lt!207627 () ListLongMap!7085)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5829 0))(
  ( (ValueCellFull!5829 (v!8491 V!17565)) (EmptyCell!5829) )
))
(declare-datatypes ((array!28459 0))(
  ( (array!28460 (arr!13667 (Array (_ BitVec 32) ValueCell!5829)) (size!14019 (_ BitVec 32))) )
))
(declare-fun lt!207631 () array!28459)

(declare-fun lt!207628 () array!28457)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1730 (array!28457 array!28459 (_ BitVec 32) (_ BitVec 32) V!17565 V!17565 (_ BitVec 32) Int) ListLongMap!7085)

(assert (=> b!458854 (= lt!207627 (getCurrentListMapNoExtraKeys!1730 lt!207628 lt!207631 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28459)

(declare-fun v!412 () V!17565)

(assert (=> b!458854 (= lt!207631 (array!28460 (store (arr!13667 _values!549) i!563 (ValueCellFull!5829 v!412)) (size!14019 _values!549)))))

(declare-fun lt!207626 () ListLongMap!7085)

(assert (=> b!458854 (= lt!207626 (getCurrentListMapNoExtraKeys!1730 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!20167 () Bool)

(declare-fun mapRes!20167 () Bool)

(declare-fun tp!38857 () Bool)

(assert (=> mapNonEmpty!20167 (= mapRes!20167 (and tp!38857 e!267871))))

(declare-fun mapValue!20167 () ValueCell!5829)

(declare-fun mapRest!20167 () (Array (_ BitVec 32) ValueCell!5829))

(declare-fun mapKey!20167 () (_ BitVec 32))

(assert (=> mapNonEmpty!20167 (= (arr!13667 _values!549) (store mapRest!20167 mapKey!20167 mapValue!20167))))

(declare-fun b!458855 () Bool)

(declare-fun res!274253 () Bool)

(declare-fun e!267863 () Bool)

(assert (=> b!458855 (=> (not res!274253) (not e!267863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!458855 (= res!274253 (validMask!0 mask!1025))))

(declare-fun res!274254 () Bool)

(assert (=> start!41146 (=> (not res!274254) (not e!267863))))

(assert (=> start!41146 (= res!274254 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14018 _keys!709))))))

(assert (=> start!41146 e!267863))

(assert (=> start!41146 tp_is_empty!12345))

(assert (=> start!41146 tp!38856))

(assert (=> start!41146 true))

(declare-fun e!267867 () Bool)

(declare-fun array_inv!9886 (array!28459) Bool)

(assert (=> start!41146 (and (array_inv!9886 _values!549) e!267867)))

(declare-fun array_inv!9887 (array!28457) Bool)

(assert (=> start!41146 (array_inv!9887 _keys!709)))

(declare-fun b!458856 () Bool)

(declare-fun e!267864 () Bool)

(assert (=> b!458856 (= e!267864 tp_is_empty!12345)))

(declare-fun b!458857 () Bool)

(declare-fun res!274243 () Bool)

(assert (=> b!458857 (=> (not res!274243) (not e!267863))))

(declare-fun arrayContainsKey!0 (array!28457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458857 (= res!274243 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!458858 () Bool)

(declare-fun res!274251 () Bool)

(assert (=> b!458858 (=> (not res!274251) (not e!267863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!458858 (= res!274251 (validKeyInArray!0 k0!794))))

(declare-fun b!458859 () Bool)

(declare-fun res!274247 () Bool)

(assert (=> b!458859 (=> (not res!274247) (not e!267863))))

(assert (=> b!458859 (= res!274247 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14018 _keys!709))))))

(declare-fun b!458860 () Bool)

(declare-fun res!274244 () Bool)

(assert (=> b!458860 (=> (not res!274244) (not e!267863))))

(declare-datatypes ((List!8263 0))(
  ( (Nil!8260) (Cons!8259 (h!9115 (_ BitVec 64)) (t!14157 List!8263)) )
))
(declare-fun arrayNoDuplicates!0 (array!28457 (_ BitVec 32) List!8263) Bool)

(assert (=> b!458860 (= res!274244 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8260))))

(declare-fun b!458861 () Bool)

(declare-fun e!267870 () Bool)

(assert (=> b!458861 (= e!267868 (not e!267870))))

(declare-fun res!274246 () Bool)

(assert (=> b!458861 (=> res!274246 e!267870)))

(assert (=> b!458861 (= res!274246 (not (validKeyInArray!0 (select (arr!13666 _keys!709) from!863))))))

(declare-fun lt!207630 () ListLongMap!7085)

(declare-fun lt!207633 () ListLongMap!7085)

(assert (=> b!458861 (= lt!207630 lt!207633)))

(declare-fun lt!207629 () ListLongMap!7085)

(declare-fun +!1578 (ListLongMap!7085 tuple2!8158) ListLongMap!7085)

(assert (=> b!458861 (= lt!207633 (+!1578 lt!207629 (tuple2!8159 k0!794 v!412)))))

(assert (=> b!458861 (= lt!207630 (getCurrentListMapNoExtraKeys!1730 lt!207628 lt!207631 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!458861 (= lt!207629 (getCurrentListMapNoExtraKeys!1730 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!207632 () Unit!13273)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!736 (array!28457 array!28459 (_ BitVec 32) (_ BitVec 32) V!17565 V!17565 (_ BitVec 32) (_ BitVec 64) V!17565 (_ BitVec 32) Int) Unit!13273)

(assert (=> b!458861 (= lt!207632 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!736 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!458862 () Bool)

(declare-fun res!274250 () Bool)

(assert (=> b!458862 (=> (not res!274250) (not e!267863))))

(assert (=> b!458862 (= res!274250 (or (= (select (arr!13666 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13666 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458863 () Bool)

(declare-fun Unit!13276 () Unit!13273)

(assert (=> b!458863 (= e!267865 Unit!13276)))

(declare-fun b!458864 () Bool)

(declare-fun res!274242 () Bool)

(assert (=> b!458864 (=> (not res!274242) (not e!267863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28457 (_ BitVec 32)) Bool)

(assert (=> b!458864 (= res!274242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!20167 () Bool)

(assert (=> mapIsEmpty!20167 mapRes!20167))

(declare-fun b!458865 () Bool)

(assert (=> b!458865 (= e!267863 e!267869)))

(declare-fun res!274252 () Bool)

(assert (=> b!458865 (=> (not res!274252) (not e!267869))))

(assert (=> b!458865 (= res!274252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207628 mask!1025))))

(assert (=> b!458865 (= lt!207628 (array!28458 (store (arr!13666 _keys!709) i!563 k0!794) (size!14018 _keys!709)))))

(declare-fun b!458866 () Bool)

(assert (=> b!458866 (= e!267870 (bvslt from!863 (size!14018 _keys!709)))))

(declare-fun lt!207625 () Unit!13273)

(assert (=> b!458866 (= lt!207625 e!267865)))

(declare-fun c!56384 () Bool)

(assert (=> b!458866 (= c!56384 (= (select (arr!13666 _keys!709) from!863) k0!794))))

(declare-fun get!6750 (ValueCell!5829 V!17565) V!17565)

(declare-fun dynLambda!888 (Int (_ BitVec 64)) V!17565)

(assert (=> b!458866 (= lt!207627 (+!1578 lt!207633 (tuple2!8159 (select (arr!13666 _keys!709) from!863) (get!6750 (select (arr!13667 _values!549) from!863) (dynLambda!888 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458867 () Bool)

(declare-fun res!274248 () Bool)

(assert (=> b!458867 (=> (not res!274248) (not e!267869))))

(assert (=> b!458867 (= res!274248 (arrayNoDuplicates!0 lt!207628 #b00000000000000000000000000000000 Nil!8260))))

(declare-fun b!458868 () Bool)

(assert (=> b!458868 (= e!267867 (and e!267864 mapRes!20167))))

(declare-fun condMapEmpty!20167 () Bool)

(declare-fun mapDefault!20167 () ValueCell!5829)

(assert (=> b!458868 (= condMapEmpty!20167 (= (arr!13667 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5829)) mapDefault!20167)))))

(declare-fun b!458869 () Bool)

(declare-fun res!274255 () Bool)

(assert (=> b!458869 (=> (not res!274255) (not e!267863))))

(assert (=> b!458869 (= res!274255 (and (= (size!14019 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14018 _keys!709) (size!14019 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!458870 () Bool)

(declare-fun res!274245 () Bool)

(assert (=> b!458870 (=> (not res!274245) (not e!267869))))

(assert (=> b!458870 (= res!274245 (bvsle from!863 i!563))))

(assert (= (and start!41146 res!274254) b!458855))

(assert (= (and b!458855 res!274253) b!458869))

(assert (= (and b!458869 res!274255) b!458864))

(assert (= (and b!458864 res!274242) b!458860))

(assert (= (and b!458860 res!274244) b!458859))

(assert (= (and b!458859 res!274247) b!458858))

(assert (= (and b!458858 res!274251) b!458862))

(assert (= (and b!458862 res!274250) b!458857))

(assert (= (and b!458857 res!274243) b!458865))

(assert (= (and b!458865 res!274252) b!458867))

(assert (= (and b!458867 res!274248) b!458870))

(assert (= (and b!458870 res!274245) b!458854))

(assert (= (and b!458854 res!274249) b!458861))

(assert (= (and b!458861 (not res!274246)) b!458866))

(assert (= (and b!458866 c!56384) b!458853))

(assert (= (and b!458866 (not c!56384)) b!458863))

(assert (= (and b!458868 condMapEmpty!20167) mapIsEmpty!20167))

(assert (= (and b!458868 (not condMapEmpty!20167)) mapNonEmpty!20167))

(get-info :version)

(assert (= (and mapNonEmpty!20167 ((_ is ValueCellFull!5829) mapValue!20167)) b!458852))

(assert (= (and b!458868 ((_ is ValueCellFull!5829) mapDefault!20167)) b!458856))

(assert (= start!41146 b!458868))

(declare-fun b_lambda!9871 () Bool)

(assert (=> (not b_lambda!9871) (not b!458866)))

(declare-fun t!14155 () Bool)

(declare-fun tb!3851 () Bool)

(assert (=> (and start!41146 (= defaultEntry!557 defaultEntry!557) t!14155) tb!3851))

(declare-fun result!7239 () Bool)

(assert (=> tb!3851 (= result!7239 tp_is_empty!12345)))

(assert (=> b!458866 t!14155))

(declare-fun b_and!19273 () Bool)

(assert (= b_and!19271 (and (=> t!14155 result!7239) b_and!19273)))

(declare-fun m!442215 () Bool)

(assert (=> b!458855 m!442215))

(declare-fun m!442217 () Bool)

(assert (=> b!458862 m!442217))

(declare-fun m!442219 () Bool)

(assert (=> b!458866 m!442219))

(declare-fun m!442221 () Bool)

(assert (=> b!458866 m!442221))

(declare-fun m!442223 () Bool)

(assert (=> b!458866 m!442223))

(declare-fun m!442225 () Bool)

(assert (=> b!458866 m!442225))

(assert (=> b!458866 m!442223))

(assert (=> b!458866 m!442221))

(declare-fun m!442227 () Bool)

(assert (=> b!458866 m!442227))

(declare-fun m!442229 () Bool)

(assert (=> mapNonEmpty!20167 m!442229))

(declare-fun m!442231 () Bool)

(assert (=> b!458853 m!442231))

(assert (=> b!458861 m!442219))

(declare-fun m!442233 () Bool)

(assert (=> b!458861 m!442233))

(declare-fun m!442235 () Bool)

(assert (=> b!458861 m!442235))

(declare-fun m!442237 () Bool)

(assert (=> b!458861 m!442237))

(assert (=> b!458861 m!442219))

(declare-fun m!442239 () Bool)

(assert (=> b!458861 m!442239))

(declare-fun m!442241 () Bool)

(assert (=> b!458861 m!442241))

(declare-fun m!442243 () Bool)

(assert (=> b!458860 m!442243))

(declare-fun m!442245 () Bool)

(assert (=> start!41146 m!442245))

(declare-fun m!442247 () Bool)

(assert (=> start!41146 m!442247))

(declare-fun m!442249 () Bool)

(assert (=> b!458857 m!442249))

(declare-fun m!442251 () Bool)

(assert (=> b!458865 m!442251))

(declare-fun m!442253 () Bool)

(assert (=> b!458865 m!442253))

(declare-fun m!442255 () Bool)

(assert (=> b!458864 m!442255))

(declare-fun m!442257 () Bool)

(assert (=> b!458858 m!442257))

(declare-fun m!442259 () Bool)

(assert (=> b!458867 m!442259))

(declare-fun m!442261 () Bool)

(assert (=> b!458854 m!442261))

(declare-fun m!442263 () Bool)

(assert (=> b!458854 m!442263))

(declare-fun m!442265 () Bool)

(assert (=> b!458854 m!442265))

(check-sat (not b!458857) (not b!458861) (not b!458853) tp_is_empty!12345 (not start!41146) (not b!458858) (not b!458865) (not mapNonEmpty!20167) (not b_next!11007) (not b!458864) (not b!458860) (not b_lambda!9871) (not b!458855) b_and!19273 (not b!458866) (not b!458854) (not b!458867))
(check-sat b_and!19273 (not b_next!11007))
