; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39464 () Bool)

(assert start!39464)

(declare-fun b_free!9723 () Bool)

(declare-fun b_next!9723 () Bool)

(assert (=> start!39464 (= b_free!9723 (not b_next!9723))))

(declare-fun tp!34697 () Bool)

(declare-fun b_and!17339 () Bool)

(assert (=> start!39464 (= tp!34697 b_and!17339)))

(declare-fun b!420421 () Bool)

(declare-fun res!245321 () Bool)

(declare-fun e!250405 () Bool)

(assert (=> b!420421 (=> (not res!245321) (not e!250405))))

(declare-datatypes ((array!25577 0))(
  ( (array!25578 (arr!12235 (Array (_ BitVec 32) (_ BitVec 64))) (size!12587 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25577)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15605 0))(
  ( (V!15606 (val!5482 Int)) )
))
(declare-datatypes ((ValueCell!5094 0))(
  ( (ValueCellFull!5094 (v!7725 V!15605)) (EmptyCell!5094) )
))
(declare-datatypes ((array!25579 0))(
  ( (array!25580 (arr!12236 (Array (_ BitVec 32) ValueCell!5094)) (size!12588 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25579)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!420421 (= res!245321 (and (= (size!12588 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12587 _keys!709) (size!12588 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!420422 () Bool)

(declare-fun res!245329 () Bool)

(assert (=> b!420422 (=> (not res!245329) (not e!250405))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420422 (= res!245329 (or (= (select (arr!12235 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12235 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!420423 () Bool)

(declare-fun e!250404 () Bool)

(declare-fun e!250410 () Bool)

(declare-fun mapRes!17934 () Bool)

(assert (=> b!420423 (= e!250404 (and e!250410 mapRes!17934))))

(declare-fun condMapEmpty!17934 () Bool)

(declare-fun mapDefault!17934 () ValueCell!5094)

(assert (=> b!420423 (= condMapEmpty!17934 (= (arr!12236 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5094)) mapDefault!17934)))))

(declare-fun b!420424 () Bool)

(declare-fun res!245323 () Bool)

(assert (=> b!420424 (=> (not res!245323) (not e!250405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420424 (= res!245323 (validMask!0 mask!1025))))

(declare-fun b!420425 () Bool)

(declare-fun e!250408 () Bool)

(assert (=> b!420425 (= e!250405 e!250408)))

(declare-fun res!245327 () Bool)

(assert (=> b!420425 (=> (not res!245327) (not e!250408))))

(declare-fun lt!192973 () array!25577)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25577 (_ BitVec 32)) Bool)

(assert (=> b!420425 (= res!245327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192973 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!420425 (= lt!192973 (array!25578 (store (arr!12235 _keys!709) i!563 k0!794) (size!12587 _keys!709)))))

(declare-fun b!420426 () Bool)

(declare-fun tp_is_empty!10875 () Bool)

(assert (=> b!420426 (= e!250410 tp_is_empty!10875)))

(declare-fun b!420427 () Bool)

(declare-fun e!250411 () Bool)

(assert (=> b!420427 (= e!250408 e!250411)))

(declare-fun res!245325 () Bool)

(assert (=> b!420427 (=> (not res!245325) (not e!250411))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!420427 (= res!245325 (= from!863 i!563))))

(declare-fun lt!192975 () array!25579)

(declare-fun minValue!515 () V!15605)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15605)

(declare-datatypes ((tuple2!7110 0))(
  ( (tuple2!7111 (_1!3565 (_ BitVec 64)) (_2!3565 V!15605)) )
))
(declare-datatypes ((List!7155 0))(
  ( (Nil!7152) (Cons!7151 (h!8007 tuple2!7110) (t!12551 List!7155)) )
))
(declare-datatypes ((ListLongMap!6037 0))(
  ( (ListLongMap!6038 (toList!3034 List!7155)) )
))
(declare-fun lt!192970 () ListLongMap!6037)

(declare-fun getCurrentListMapNoExtraKeys!1235 (array!25577 array!25579 (_ BitVec 32) (_ BitVec 32) V!15605 V!15605 (_ BitVec 32) Int) ListLongMap!6037)

(assert (=> b!420427 (= lt!192970 (getCurrentListMapNoExtraKeys!1235 lt!192973 lt!192975 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15605)

(assert (=> b!420427 (= lt!192975 (array!25580 (store (arr!12236 _values!549) i!563 (ValueCellFull!5094 v!412)) (size!12588 _values!549)))))

(declare-fun lt!192971 () ListLongMap!6037)

(assert (=> b!420427 (= lt!192971 (getCurrentListMapNoExtraKeys!1235 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!245322 () Bool)

(assert (=> start!39464 (=> (not res!245322) (not e!250405))))

(assert (=> start!39464 (= res!245322 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12587 _keys!709))))))

(assert (=> start!39464 e!250405))

(assert (=> start!39464 tp_is_empty!10875))

(assert (=> start!39464 tp!34697))

(assert (=> start!39464 true))

(declare-fun array_inv!8914 (array!25579) Bool)

(assert (=> start!39464 (and (array_inv!8914 _values!549) e!250404)))

(declare-fun array_inv!8915 (array!25577) Bool)

(assert (=> start!39464 (array_inv!8915 _keys!709)))

(declare-fun call!29344 () ListLongMap!6037)

(declare-fun c!55223 () Bool)

(declare-fun bm!29341 () Bool)

(assert (=> bm!29341 (= call!29344 (getCurrentListMapNoExtraKeys!1235 (ite c!55223 lt!192973 _keys!709) (ite c!55223 lt!192975 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420428 () Bool)

(declare-fun res!245328 () Bool)

(assert (=> b!420428 (=> (not res!245328) (not e!250408))))

(declare-datatypes ((List!7156 0))(
  ( (Nil!7153) (Cons!7152 (h!8008 (_ BitVec 64)) (t!12552 List!7156)) )
))
(declare-fun arrayNoDuplicates!0 (array!25577 (_ BitVec 32) List!7156) Bool)

(assert (=> b!420428 (= res!245328 (arrayNoDuplicates!0 lt!192973 #b00000000000000000000000000000000 Nil!7153))))

(declare-fun b!420429 () Bool)

(declare-fun res!245333 () Bool)

(assert (=> b!420429 (=> (not res!245333) (not e!250405))))

(assert (=> b!420429 (= res!245333 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12587 _keys!709))))))

(declare-fun b!420430 () Bool)

(declare-fun res!245334 () Bool)

(assert (=> b!420430 (=> (not res!245334) (not e!250405))))

(assert (=> b!420430 (= res!245334 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7153))))

(declare-fun b!420431 () Bool)

(declare-fun e!250407 () Bool)

(declare-fun call!29345 () ListLongMap!6037)

(assert (=> b!420431 (= e!250407 (= call!29345 call!29344))))

(declare-fun b!420432 () Bool)

(declare-fun e!250403 () Bool)

(assert (=> b!420432 (= e!250403 true)))

(declare-fun lt!192968 () ListLongMap!6037)

(declare-fun lt!192972 () tuple2!7110)

(declare-fun lt!192969 () V!15605)

(declare-fun +!1239 (ListLongMap!6037 tuple2!7110) ListLongMap!6037)

(assert (=> b!420432 (= (+!1239 lt!192968 lt!192972) (+!1239 (+!1239 lt!192968 (tuple2!7111 k0!794 lt!192969)) lt!192972))))

(declare-fun lt!192966 () V!15605)

(assert (=> b!420432 (= lt!192972 (tuple2!7111 k0!794 lt!192966))))

(declare-datatypes ((Unit!12377 0))(
  ( (Unit!12378) )
))
(declare-fun lt!192967 () Unit!12377)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!57 (ListLongMap!6037 (_ BitVec 64) V!15605 V!15605) Unit!12377)

(assert (=> b!420432 (= lt!192967 (addSameAsAddTwiceSameKeyDiffValues!57 lt!192968 k0!794 lt!192969 lt!192966))))

(declare-fun lt!192965 () V!15605)

(declare-fun get!6080 (ValueCell!5094 V!15605) V!15605)

(assert (=> b!420432 (= lt!192969 (get!6080 (select (arr!12236 _values!549) from!863) lt!192965))))

(assert (=> b!420432 (= lt!192970 (+!1239 lt!192968 (tuple2!7111 (select (arr!12235 lt!192973) from!863) lt!192966)))))

(assert (=> b!420432 (= lt!192966 (get!6080 (select (store (arr!12236 _values!549) i!563 (ValueCellFull!5094 v!412)) from!863) lt!192965))))

(declare-fun dynLambda!719 (Int (_ BitVec 64)) V!15605)

(assert (=> b!420432 (= lt!192965 (dynLambda!719 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!420432 (= lt!192968 (getCurrentListMapNoExtraKeys!1235 lt!192973 lt!192975 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17934 () Bool)

(assert (=> mapIsEmpty!17934 mapRes!17934))

(declare-fun b!420433 () Bool)

(declare-fun e!250409 () Bool)

(assert (=> b!420433 (= e!250409 tp_is_empty!10875)))

(declare-fun bm!29342 () Bool)

(assert (=> bm!29342 (= call!29345 (getCurrentListMapNoExtraKeys!1235 (ite c!55223 _keys!709 lt!192973) (ite c!55223 _values!549 lt!192975) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420434 () Bool)

(assert (=> b!420434 (= e!250407 (= call!29344 (+!1239 call!29345 (tuple2!7111 k0!794 v!412))))))

(declare-fun b!420435 () Bool)

(declare-fun res!245331 () Bool)

(assert (=> b!420435 (=> (not res!245331) (not e!250405))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420435 (= res!245331 (validKeyInArray!0 k0!794))))

(declare-fun b!420436 () Bool)

(declare-fun res!245324 () Bool)

(assert (=> b!420436 (=> (not res!245324) (not e!250405))))

(assert (=> b!420436 (= res!245324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420437 () Bool)

(declare-fun res!245330 () Bool)

(assert (=> b!420437 (=> (not res!245330) (not e!250408))))

(assert (=> b!420437 (= res!245330 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17934 () Bool)

(declare-fun tp!34698 () Bool)

(assert (=> mapNonEmpty!17934 (= mapRes!17934 (and tp!34698 e!250409))))

(declare-fun mapRest!17934 () (Array (_ BitVec 32) ValueCell!5094))

(declare-fun mapValue!17934 () ValueCell!5094)

(declare-fun mapKey!17934 () (_ BitVec 32))

(assert (=> mapNonEmpty!17934 (= (arr!12236 _values!549) (store mapRest!17934 mapKey!17934 mapValue!17934))))

(declare-fun b!420438 () Bool)

(declare-fun res!245332 () Bool)

(assert (=> b!420438 (=> (not res!245332) (not e!250405))))

(declare-fun arrayContainsKey!0 (array!25577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420438 (= res!245332 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!420439 () Bool)

(assert (=> b!420439 (= e!250411 (not e!250403))))

(declare-fun res!245326 () Bool)

(assert (=> b!420439 (=> res!245326 e!250403)))

(assert (=> b!420439 (= res!245326 (validKeyInArray!0 (select (arr!12235 _keys!709) from!863)))))

(assert (=> b!420439 e!250407))

(assert (=> b!420439 (= c!55223 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!192974 () Unit!12377)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!443 (array!25577 array!25579 (_ BitVec 32) (_ BitVec 32) V!15605 V!15605 (_ BitVec 32) (_ BitVec 64) V!15605 (_ BitVec 32) Int) Unit!12377)

(assert (=> b!420439 (= lt!192974 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!443 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!39464 res!245322) b!420424))

(assert (= (and b!420424 res!245323) b!420421))

(assert (= (and b!420421 res!245321) b!420436))

(assert (= (and b!420436 res!245324) b!420430))

(assert (= (and b!420430 res!245334) b!420429))

(assert (= (and b!420429 res!245333) b!420435))

(assert (= (and b!420435 res!245331) b!420422))

(assert (= (and b!420422 res!245329) b!420438))

(assert (= (and b!420438 res!245332) b!420425))

(assert (= (and b!420425 res!245327) b!420428))

(assert (= (and b!420428 res!245328) b!420437))

(assert (= (and b!420437 res!245330) b!420427))

(assert (= (and b!420427 res!245325) b!420439))

(assert (= (and b!420439 c!55223) b!420434))

(assert (= (and b!420439 (not c!55223)) b!420431))

(assert (= (or b!420434 b!420431) bm!29341))

(assert (= (or b!420434 b!420431) bm!29342))

(assert (= (and b!420439 (not res!245326)) b!420432))

(assert (= (and b!420423 condMapEmpty!17934) mapIsEmpty!17934))

(assert (= (and b!420423 (not condMapEmpty!17934)) mapNonEmpty!17934))

(get-info :version)

(assert (= (and mapNonEmpty!17934 ((_ is ValueCellFull!5094) mapValue!17934)) b!420433))

(assert (= (and b!420423 ((_ is ValueCellFull!5094) mapDefault!17934)) b!420426))

(assert (= start!39464 b!420423))

(declare-fun b_lambda!9057 () Bool)

(assert (=> (not b_lambda!9057) (not b!420432)))

(declare-fun t!12550 () Bool)

(declare-fun tb!3353 () Bool)

(assert (=> (and start!39464 (= defaultEntry!557 defaultEntry!557) t!12550) tb!3353))

(declare-fun result!6225 () Bool)

(assert (=> tb!3353 (= result!6225 tp_is_empty!10875)))

(assert (=> b!420432 t!12550))

(declare-fun b_and!17341 () Bool)

(assert (= b_and!17339 (and (=> t!12550 result!6225) b_and!17341)))

(declare-fun m!410105 () Bool)

(assert (=> b!420434 m!410105))

(declare-fun m!410107 () Bool)

(assert (=> b!420439 m!410107))

(assert (=> b!420439 m!410107))

(declare-fun m!410109 () Bool)

(assert (=> b!420439 m!410109))

(declare-fun m!410111 () Bool)

(assert (=> b!420439 m!410111))

(declare-fun m!410113 () Bool)

(assert (=> b!420422 m!410113))

(declare-fun m!410115 () Bool)

(assert (=> start!39464 m!410115))

(declare-fun m!410117 () Bool)

(assert (=> start!39464 m!410117))

(declare-fun m!410119 () Bool)

(assert (=> mapNonEmpty!17934 m!410119))

(declare-fun m!410121 () Bool)

(assert (=> b!420435 m!410121))

(declare-fun m!410123 () Bool)

(assert (=> b!420425 m!410123))

(declare-fun m!410125 () Bool)

(assert (=> b!420425 m!410125))

(declare-fun m!410127 () Bool)

(assert (=> bm!29342 m!410127))

(declare-fun m!410129 () Bool)

(assert (=> b!420438 m!410129))

(declare-fun m!410131 () Bool)

(assert (=> b!420432 m!410131))

(declare-fun m!410133 () Bool)

(assert (=> b!420432 m!410133))

(declare-fun m!410135 () Bool)

(assert (=> b!420432 m!410135))

(declare-fun m!410137 () Bool)

(assert (=> b!420432 m!410137))

(declare-fun m!410139 () Bool)

(assert (=> b!420432 m!410139))

(declare-fun m!410141 () Bool)

(assert (=> b!420432 m!410141))

(declare-fun m!410143 () Bool)

(assert (=> b!420432 m!410143))

(declare-fun m!410145 () Bool)

(assert (=> b!420432 m!410145))

(declare-fun m!410147 () Bool)

(assert (=> b!420432 m!410147))

(declare-fun m!410149 () Bool)

(assert (=> b!420432 m!410149))

(declare-fun m!410151 () Bool)

(assert (=> b!420432 m!410151))

(assert (=> b!420432 m!410145))

(declare-fun m!410153 () Bool)

(assert (=> b!420432 m!410153))

(assert (=> b!420432 m!410149))

(assert (=> b!420432 m!410131))

(declare-fun m!410155 () Bool)

(assert (=> b!420432 m!410155))

(declare-fun m!410157 () Bool)

(assert (=> b!420427 m!410157))

(assert (=> b!420427 m!410143))

(declare-fun m!410159 () Bool)

(assert (=> b!420427 m!410159))

(declare-fun m!410161 () Bool)

(assert (=> b!420436 m!410161))

(declare-fun m!410163 () Bool)

(assert (=> b!420424 m!410163))

(declare-fun m!410165 () Bool)

(assert (=> b!420430 m!410165))

(declare-fun m!410167 () Bool)

(assert (=> bm!29341 m!410167))

(declare-fun m!410169 () Bool)

(assert (=> b!420428 m!410169))

(check-sat (not b!420425) b_and!17341 (not bm!29342) (not mapNonEmpty!17934) (not b!420427) (not b_next!9723) (not start!39464) (not b!420428) (not b!420435) (not bm!29341) (not b!420438) (not b!420436) (not b_lambda!9057) (not b!420430) (not b!420439) (not b!420432) (not b!420424) (not b!420434) tp_is_empty!10875)
(check-sat b_and!17341 (not b_next!9723))
