; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39314 () Bool)

(assert start!39314)

(declare-fun b_free!9573 () Bool)

(declare-fun b_next!9573 () Bool)

(assert (=> start!39314 (= b_free!9573 (not b_next!9573))))

(declare-fun tp!34247 () Bool)

(declare-fun b_and!17039 () Bool)

(assert (=> start!39314 (= tp!34247 b_and!17039)))

(declare-fun b!415997 () Bool)

(declare-fun e!248382 () Bool)

(assert (=> b!415997 (= e!248382 true)))

(declare-datatypes ((V!15405 0))(
  ( (V!15406 (val!5407 Int)) )
))
(declare-datatypes ((tuple2!6974 0))(
  ( (tuple2!6975 (_1!3497 (_ BitVec 64)) (_2!3497 V!15405)) )
))
(declare-fun lt!190491 () tuple2!6974)

(declare-datatypes ((List!7029 0))(
  ( (Nil!7026) (Cons!7025 (h!7881 tuple2!6974) (t!12275 List!7029)) )
))
(declare-datatypes ((ListLongMap!5901 0))(
  ( (ListLongMap!5902 (toList!2966 List!7029)) )
))
(declare-fun lt!190498 () ListLongMap!5901)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!190493 () V!15405)

(declare-fun +!1178 (ListLongMap!5901 tuple2!6974) ListLongMap!5901)

(assert (=> b!415997 (= (+!1178 lt!190498 lt!190491) (+!1178 (+!1178 lt!190498 (tuple2!6975 k0!794 lt!190493)) lt!190491))))

(declare-fun lt!190497 () V!15405)

(assert (=> b!415997 (= lt!190491 (tuple2!6975 k0!794 lt!190497))))

(declare-datatypes ((Unit!12255 0))(
  ( (Unit!12256) )
))
(declare-fun lt!190500 () Unit!12255)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!2 (ListLongMap!5901 (_ BitVec 64) V!15405 V!15405) Unit!12255)

(assert (=> b!415997 (= lt!190500 (addSameAsAddTwiceSameKeyDiffValues!2 lt!190498 k0!794 lt!190493 lt!190497))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5019 0))(
  ( (ValueCellFull!5019 (v!7650 V!15405)) (EmptyCell!5019) )
))
(declare-datatypes ((array!25285 0))(
  ( (array!25286 (arr!12089 (Array (_ BitVec 32) ValueCell!5019)) (size!12441 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25285)

(declare-fun lt!190494 () V!15405)

(declare-fun get!5975 (ValueCell!5019 V!15405) V!15405)

(assert (=> b!415997 (= lt!190493 (get!5975 (select (arr!12089 _values!549) from!863) lt!190494))))

(declare-fun lt!190499 () ListLongMap!5901)

(declare-datatypes ((array!25287 0))(
  ( (array!25288 (arr!12090 (Array (_ BitVec 32) (_ BitVec 64))) (size!12442 (_ BitVec 32))) )
))
(declare-fun lt!190495 () array!25287)

(assert (=> b!415997 (= lt!190499 (+!1178 lt!190498 (tuple2!6975 (select (arr!12090 lt!190495) from!863) lt!190497)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15405)

(assert (=> b!415997 (= lt!190497 (get!5975 (select (store (arr!12089 _values!549) i!563 (ValueCellFull!5019 v!412)) from!863) lt!190494))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!664 (Int (_ BitVec 64)) V!15405)

(assert (=> b!415997 (= lt!190494 (dynLambda!664 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15405)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15405)

(declare-fun lt!190496 () array!25285)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1170 (array!25287 array!25285 (_ BitVec 32) (_ BitVec 32) V!15405 V!15405 (_ BitVec 32) Int) ListLongMap!5901)

(assert (=> b!415997 (= lt!190498 (getCurrentListMapNoExtraKeys!1170 lt!190495 lt!190496 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415998 () Bool)

(declare-fun e!248379 () Bool)

(assert (=> b!415998 (= e!248379 (not e!248382))))

(declare-fun res!242175 () Bool)

(assert (=> b!415998 (=> res!242175 e!248382)))

(declare-fun _keys!709 () array!25287)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415998 (= res!242175 (validKeyInArray!0 (select (arr!12090 _keys!709) from!863)))))

(declare-fun e!248384 () Bool)

(assert (=> b!415998 e!248384))

(declare-fun c!54998 () Bool)

(assert (=> b!415998 (= c!54998 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!190492 () Unit!12255)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!390 (array!25287 array!25285 (_ BitVec 32) (_ BitVec 32) V!15405 V!15405 (_ BitVec 32) (_ BitVec 64) V!15405 (_ BitVec 32) Int) Unit!12255)

(assert (=> b!415998 (= lt!190492 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!390 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415999 () Bool)

(declare-fun res!242183 () Bool)

(declare-fun e!248378 () Bool)

(assert (=> b!415999 (=> (not res!242183) (not e!248378))))

(assert (=> b!415999 (= res!242183 (or (= (select (arr!12090 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12090 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!416000 () Bool)

(declare-fun res!242172 () Bool)

(assert (=> b!416000 (=> (not res!242172) (not e!248378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416000 (= res!242172 (validMask!0 mask!1025))))

(declare-fun b!416001 () Bool)

(declare-fun e!248386 () Bool)

(declare-fun tp_is_empty!10725 () Bool)

(assert (=> b!416001 (= e!248386 tp_is_empty!10725)))

(declare-fun b!416002 () Bool)

(declare-fun res!242184 () Bool)

(assert (=> b!416002 (=> (not res!242184) (not e!248378))))

(declare-fun arrayContainsKey!0 (array!25287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416002 (= res!242184 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!416003 () Bool)

(declare-fun res!242179 () Bool)

(assert (=> b!416003 (=> (not res!242179) (not e!248378))))

(declare-datatypes ((List!7030 0))(
  ( (Nil!7027) (Cons!7026 (h!7882 (_ BitVec 64)) (t!12276 List!7030)) )
))
(declare-fun arrayNoDuplicates!0 (array!25287 (_ BitVec 32) List!7030) Bool)

(assert (=> b!416003 (= res!242179 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7027))))

(declare-fun mapNonEmpty!17709 () Bool)

(declare-fun mapRes!17709 () Bool)

(declare-fun tp!34248 () Bool)

(declare-fun e!248383 () Bool)

(assert (=> mapNonEmpty!17709 (= mapRes!17709 (and tp!34248 e!248383))))

(declare-fun mapValue!17709 () ValueCell!5019)

(declare-fun mapRest!17709 () (Array (_ BitVec 32) ValueCell!5019))

(declare-fun mapKey!17709 () (_ BitVec 32))

(assert (=> mapNonEmpty!17709 (= (arr!12089 _values!549) (store mapRest!17709 mapKey!17709 mapValue!17709))))

(declare-fun b!416004 () Bool)

(declare-fun res!242180 () Bool)

(assert (=> b!416004 (=> (not res!242180) (not e!248378))))

(assert (=> b!416004 (= res!242180 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12442 _keys!709))))))

(declare-fun res!242178 () Bool)

(assert (=> start!39314 (=> (not res!242178) (not e!248378))))

(assert (=> start!39314 (= res!242178 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12442 _keys!709))))))

(assert (=> start!39314 e!248378))

(assert (=> start!39314 tp_is_empty!10725))

(assert (=> start!39314 tp!34247))

(assert (=> start!39314 true))

(declare-fun e!248380 () Bool)

(declare-fun array_inv!8818 (array!25285) Bool)

(assert (=> start!39314 (and (array_inv!8818 _values!549) e!248380)))

(declare-fun array_inv!8819 (array!25287) Bool)

(assert (=> start!39314 (array_inv!8819 _keys!709)))

(declare-fun b!415996 () Bool)

(declare-fun res!242174 () Bool)

(declare-fun e!248381 () Bool)

(assert (=> b!415996 (=> (not res!242174) (not e!248381))))

(assert (=> b!415996 (= res!242174 (arrayNoDuplicates!0 lt!190495 #b00000000000000000000000000000000 Nil!7027))))

(declare-fun b!416005 () Bool)

(assert (=> b!416005 (= e!248381 e!248379)))

(declare-fun res!242182 () Bool)

(assert (=> b!416005 (=> (not res!242182) (not e!248379))))

(assert (=> b!416005 (= res!242182 (= from!863 i!563))))

(assert (=> b!416005 (= lt!190499 (getCurrentListMapNoExtraKeys!1170 lt!190495 lt!190496 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!416005 (= lt!190496 (array!25286 (store (arr!12089 _values!549) i!563 (ValueCellFull!5019 v!412)) (size!12441 _values!549)))))

(declare-fun lt!190490 () ListLongMap!5901)

(assert (=> b!416005 (= lt!190490 (getCurrentListMapNoExtraKeys!1170 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416006 () Bool)

(declare-fun res!242181 () Bool)

(assert (=> b!416006 (=> (not res!242181) (not e!248378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25287 (_ BitVec 32)) Bool)

(assert (=> b!416006 (= res!242181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!416007 () Bool)

(assert (=> b!416007 (= e!248380 (and e!248386 mapRes!17709))))

(declare-fun condMapEmpty!17709 () Bool)

(declare-fun mapDefault!17709 () ValueCell!5019)

(assert (=> b!416007 (= condMapEmpty!17709 (= (arr!12089 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5019)) mapDefault!17709)))))

(declare-fun b!416008 () Bool)

(declare-fun res!242176 () Bool)

(assert (=> b!416008 (=> (not res!242176) (not e!248378))))

(assert (=> b!416008 (= res!242176 (and (= (size!12441 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12442 _keys!709) (size!12441 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17709 () Bool)

(assert (=> mapIsEmpty!17709 mapRes!17709))

(declare-fun b!416009 () Bool)

(assert (=> b!416009 (= e!248383 tp_is_empty!10725)))

(declare-fun b!416010 () Bool)

(declare-fun call!28894 () ListLongMap!5901)

(declare-fun call!28895 () ListLongMap!5901)

(assert (=> b!416010 (= e!248384 (= call!28895 (+!1178 call!28894 (tuple2!6975 k0!794 v!412))))))

(declare-fun bm!28891 () Bool)

(assert (=> bm!28891 (= call!28894 (getCurrentListMapNoExtraKeys!1170 (ite c!54998 _keys!709 lt!190495) (ite c!54998 _values!549 lt!190496) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416011 () Bool)

(assert (=> b!416011 (= e!248384 (= call!28894 call!28895))))

(declare-fun b!416012 () Bool)

(declare-fun res!242177 () Bool)

(assert (=> b!416012 (=> (not res!242177) (not e!248378))))

(assert (=> b!416012 (= res!242177 (validKeyInArray!0 k0!794))))

(declare-fun b!416013 () Bool)

(declare-fun res!242173 () Bool)

(assert (=> b!416013 (=> (not res!242173) (not e!248381))))

(assert (=> b!416013 (= res!242173 (bvsle from!863 i!563))))

(declare-fun bm!28892 () Bool)

(assert (=> bm!28892 (= call!28895 (getCurrentListMapNoExtraKeys!1170 (ite c!54998 lt!190495 _keys!709) (ite c!54998 lt!190496 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416014 () Bool)

(assert (=> b!416014 (= e!248378 e!248381)))

(declare-fun res!242171 () Bool)

(assert (=> b!416014 (=> (not res!242171) (not e!248381))))

(assert (=> b!416014 (= res!242171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190495 mask!1025))))

(assert (=> b!416014 (= lt!190495 (array!25288 (store (arr!12090 _keys!709) i!563 k0!794) (size!12442 _keys!709)))))

(assert (= (and start!39314 res!242178) b!416000))

(assert (= (and b!416000 res!242172) b!416008))

(assert (= (and b!416008 res!242176) b!416006))

(assert (= (and b!416006 res!242181) b!416003))

(assert (= (and b!416003 res!242179) b!416004))

(assert (= (and b!416004 res!242180) b!416012))

(assert (= (and b!416012 res!242177) b!415999))

(assert (= (and b!415999 res!242183) b!416002))

(assert (= (and b!416002 res!242184) b!416014))

(assert (= (and b!416014 res!242171) b!415996))

(assert (= (and b!415996 res!242174) b!416013))

(assert (= (and b!416013 res!242173) b!416005))

(assert (= (and b!416005 res!242182) b!415998))

(assert (= (and b!415998 c!54998) b!416010))

(assert (= (and b!415998 (not c!54998)) b!416011))

(assert (= (or b!416010 b!416011) bm!28892))

(assert (= (or b!416010 b!416011) bm!28891))

(assert (= (and b!415998 (not res!242175)) b!415997))

(assert (= (and b!416007 condMapEmpty!17709) mapIsEmpty!17709))

(assert (= (and b!416007 (not condMapEmpty!17709)) mapNonEmpty!17709))

(get-info :version)

(assert (= (and mapNonEmpty!17709 ((_ is ValueCellFull!5019) mapValue!17709)) b!416009))

(assert (= (and b!416007 ((_ is ValueCellFull!5019) mapDefault!17709)) b!416001))

(assert (= start!39314 b!416007))

(declare-fun b_lambda!8907 () Bool)

(assert (=> (not b_lambda!8907) (not b!415997)))

(declare-fun t!12274 () Bool)

(declare-fun tb!3203 () Bool)

(assert (=> (and start!39314 (= defaultEntry!557 defaultEntry!557) t!12274) tb!3203))

(declare-fun result!5925 () Bool)

(assert (=> tb!3203 (= result!5925 tp_is_empty!10725)))

(assert (=> b!415997 t!12274))

(declare-fun b_and!17041 () Bool)

(assert (= b_and!17039 (and (=> t!12274 result!5925) b_and!17041)))

(declare-fun m!405159 () Bool)

(assert (=> b!415996 m!405159))

(declare-fun m!405161 () Bool)

(assert (=> b!416002 m!405161))

(declare-fun m!405163 () Bool)

(assert (=> start!39314 m!405163))

(declare-fun m!405165 () Bool)

(assert (=> start!39314 m!405165))

(declare-fun m!405167 () Bool)

(assert (=> b!416014 m!405167))

(declare-fun m!405169 () Bool)

(assert (=> b!416014 m!405169))

(declare-fun m!405171 () Bool)

(assert (=> b!415999 m!405171))

(declare-fun m!405173 () Bool)

(assert (=> b!416000 m!405173))

(declare-fun m!405175 () Bool)

(assert (=> b!416003 m!405175))

(declare-fun m!405177 () Bool)

(assert (=> b!415998 m!405177))

(assert (=> b!415998 m!405177))

(declare-fun m!405179 () Bool)

(assert (=> b!415998 m!405179))

(declare-fun m!405181 () Bool)

(assert (=> b!415998 m!405181))

(declare-fun m!405183 () Bool)

(assert (=> b!416010 m!405183))

(declare-fun m!405185 () Bool)

(assert (=> mapNonEmpty!17709 m!405185))

(declare-fun m!405187 () Bool)

(assert (=> b!416006 m!405187))

(declare-fun m!405189 () Bool)

(assert (=> bm!28891 m!405189))

(declare-fun m!405191 () Bool)

(assert (=> b!415997 m!405191))

(declare-fun m!405193 () Bool)

(assert (=> b!415997 m!405193))

(declare-fun m!405195 () Bool)

(assert (=> b!415997 m!405195))

(declare-fun m!405197 () Bool)

(assert (=> b!415997 m!405197))

(declare-fun m!405199 () Bool)

(assert (=> b!415997 m!405199))

(declare-fun m!405201 () Bool)

(assert (=> b!415997 m!405201))

(declare-fun m!405203 () Bool)

(assert (=> b!415997 m!405203))

(declare-fun m!405205 () Bool)

(assert (=> b!415997 m!405205))

(assert (=> b!415997 m!405191))

(declare-fun m!405207 () Bool)

(assert (=> b!415997 m!405207))

(assert (=> b!415997 m!405195))

(declare-fun m!405209 () Bool)

(assert (=> b!415997 m!405209))

(declare-fun m!405211 () Bool)

(assert (=> b!415997 m!405211))

(declare-fun m!405213 () Bool)

(assert (=> b!415997 m!405213))

(assert (=> b!415997 m!405207))

(declare-fun m!405215 () Bool)

(assert (=> b!415997 m!405215))

(declare-fun m!405217 () Bool)

(assert (=> b!416005 m!405217))

(assert (=> b!416005 m!405201))

(declare-fun m!405219 () Bool)

(assert (=> b!416005 m!405219))

(declare-fun m!405221 () Bool)

(assert (=> b!416012 m!405221))

(declare-fun m!405223 () Bool)

(assert (=> bm!28892 m!405223))

(check-sat (not b_next!9573) (not b!415997) b_and!17041 (not b!415996) (not b!416010) (not b!416006) (not b_lambda!8907) (not start!39314) (not mapNonEmpty!17709) (not bm!28892) (not b!416003) (not b!416005) tp_is_empty!10725 (not b!416002) (not b!416012) (not b!416000) (not b!415998) (not bm!28891) (not b!416014))
(check-sat b_and!17041 (not b_next!9573))
