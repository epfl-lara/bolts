; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95886 () Bool)

(assert start!95886)

(declare-fun b_free!22503 () Bool)

(declare-fun b_next!22503 () Bool)

(assert (=> start!95886 (= b_free!22503 (not b_next!22503))))

(declare-fun tp!79358 () Bool)

(declare-fun b_and!35699 () Bool)

(assert (=> start!95886 (= tp!79358 b_and!35699)))

(declare-fun b!1084751 () Bool)

(declare-fun e!619744 () Bool)

(declare-fun e!619745 () Bool)

(assert (=> b!1084751 (= e!619744 (not e!619745))))

(declare-fun res!723281 () Bool)

(assert (=> b!1084751 (=> res!723281 e!619745)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1084751 (= res!723281 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40467 0))(
  ( (V!40468 (val!13309 Int)) )
))
(declare-fun minValue!831 () V!40467)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!16934 0))(
  ( (tuple2!16935 (_1!8477 (_ BitVec 64)) (_2!8477 V!40467)) )
))
(declare-datatypes ((List!23576 0))(
  ( (Nil!23573) (Cons!23572 (h!24781 tuple2!16934) (t!33144 List!23576)) )
))
(declare-datatypes ((ListLongMap!14915 0))(
  ( (ListLongMap!14916 (toList!7473 List!23576)) )
))
(declare-fun lt!480932 () ListLongMap!14915)

(declare-fun zeroValue!831 () V!40467)

(declare-datatypes ((array!69912 0))(
  ( (array!69913 (arr!33626 (Array (_ BitVec 32) (_ BitVec 64))) (size!34163 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69912)

(declare-datatypes ((ValueCell!12543 0))(
  ( (ValueCellFull!12543 (v!15931 V!40467)) (EmptyCell!12543) )
))
(declare-datatypes ((array!69914 0))(
  ( (array!69915 (arr!33627 (Array (_ BitVec 32) ValueCell!12543)) (size!34164 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69914)

(declare-fun getCurrentListMap!4230 (array!69912 array!69914 (_ BitVec 32) (_ BitVec 32) V!40467 V!40467 (_ BitVec 32) Int) ListLongMap!14915)

(assert (=> b!1084751 (= lt!480932 (getCurrentListMap!4230 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480934 () array!69914)

(declare-fun lt!480937 () ListLongMap!14915)

(declare-fun lt!480940 () array!69912)

(assert (=> b!1084751 (= lt!480937 (getCurrentListMap!4230 lt!480940 lt!480934 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480935 () ListLongMap!14915)

(declare-fun lt!480938 () ListLongMap!14915)

(assert (=> b!1084751 (and (= lt!480935 lt!480938) (= lt!480938 lt!480935))))

(declare-fun lt!480936 () ListLongMap!14915)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!754 (ListLongMap!14915 (_ BitVec 64)) ListLongMap!14915)

(assert (=> b!1084751 (= lt!480938 (-!754 lt!480936 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35623 0))(
  ( (Unit!35624) )
))
(declare-fun lt!480929 () Unit!35623)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!36 (array!69912 array!69914 (_ BitVec 32) (_ BitVec 32) V!40467 V!40467 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35623)

(assert (=> b!1084751 (= lt!480929 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!36 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3982 (array!69912 array!69914 (_ BitVec 32) (_ BitVec 32) V!40467 V!40467 (_ BitVec 32) Int) ListLongMap!14915)

(assert (=> b!1084751 (= lt!480935 (getCurrentListMapNoExtraKeys!3982 lt!480940 lt!480934 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2118 (Int (_ BitVec 64)) V!40467)

(assert (=> b!1084751 (= lt!480934 (array!69915 (store (arr!33627 _values!874) i!650 (ValueCellFull!12543 (dynLambda!2118 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34164 _values!874)))))

(assert (=> b!1084751 (= lt!480936 (getCurrentListMapNoExtraKeys!3982 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084751 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480933 () Unit!35623)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69912 (_ BitVec 64) (_ BitVec 32)) Unit!35623)

(assert (=> b!1084751 (= lt!480933 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1084753 () Bool)

(declare-fun res!723279 () Bool)

(declare-fun e!619747 () Bool)

(assert (=> b!1084753 (=> (not res!723279) (not e!619747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69912 (_ BitVec 32)) Bool)

(assert (=> b!1084753 (= res!723279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1084754 () Bool)

(declare-fun e!619743 () Bool)

(declare-fun tp_is_empty!26505 () Bool)

(assert (=> b!1084754 (= e!619743 tp_is_empty!26505)))

(declare-fun b!1084755 () Bool)

(declare-fun e!619746 () Bool)

(declare-fun mapRes!41512 () Bool)

(assert (=> b!1084755 (= e!619746 (and e!619743 mapRes!41512))))

(declare-fun condMapEmpty!41512 () Bool)

(declare-fun mapDefault!41512 () ValueCell!12543)

(assert (=> b!1084755 (= condMapEmpty!41512 (= (arr!33627 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12543)) mapDefault!41512)))))

(declare-fun b!1084756 () Bool)

(declare-fun res!723287 () Bool)

(assert (=> b!1084756 (=> (not res!723287) (not e!619744))))

(declare-datatypes ((List!23577 0))(
  ( (Nil!23574) (Cons!23573 (h!24782 (_ BitVec 64)) (t!33145 List!23577)) )
))
(declare-fun arrayNoDuplicates!0 (array!69912 (_ BitVec 32) List!23577) Bool)

(assert (=> b!1084756 (= res!723287 (arrayNoDuplicates!0 lt!480940 #b00000000000000000000000000000000 Nil!23574))))

(declare-fun b!1084757 () Bool)

(declare-fun res!723282 () Bool)

(assert (=> b!1084757 (=> (not res!723282) (not e!619747))))

(assert (=> b!1084757 (= res!723282 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23574))))

(declare-fun mapIsEmpty!41512 () Bool)

(assert (=> mapIsEmpty!41512 mapRes!41512))

(declare-fun b!1084758 () Bool)

(declare-fun res!723278 () Bool)

(assert (=> b!1084758 (=> (not res!723278) (not e!619747))))

(assert (=> b!1084758 (= res!723278 (= (select (arr!33626 _keys!1070) i!650) k0!904))))

(declare-fun b!1084759 () Bool)

(declare-fun res!723285 () Bool)

(assert (=> b!1084759 (=> (not res!723285) (not e!619747))))

(assert (=> b!1084759 (= res!723285 (and (= (size!34164 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34163 _keys!1070) (size!34164 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084760 () Bool)

(assert (=> b!1084760 (= e!619747 e!619744)))

(declare-fun res!723280 () Bool)

(assert (=> b!1084760 (=> (not res!723280) (not e!619744))))

(assert (=> b!1084760 (= res!723280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480940 mask!1414))))

(assert (=> b!1084760 (= lt!480940 (array!69913 (store (arr!33626 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34163 _keys!1070)))))

(declare-fun b!1084761 () Bool)

(declare-fun res!723283 () Bool)

(assert (=> b!1084761 (=> (not res!723283) (not e!619747))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084761 (= res!723283 (validKeyInArray!0 k0!904))))

(declare-fun res!723286 () Bool)

(assert (=> start!95886 (=> (not res!723286) (not e!619747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95886 (= res!723286 (validMask!0 mask!1414))))

(assert (=> start!95886 e!619747))

(assert (=> start!95886 tp!79358))

(assert (=> start!95886 true))

(assert (=> start!95886 tp_is_empty!26505))

(declare-fun array_inv!25802 (array!69912) Bool)

(assert (=> start!95886 (array_inv!25802 _keys!1070)))

(declare-fun array_inv!25803 (array!69914) Bool)

(assert (=> start!95886 (and (array_inv!25803 _values!874) e!619746)))

(declare-fun b!1084752 () Bool)

(declare-fun e!619741 () Bool)

(assert (=> b!1084752 (= e!619741 tp_is_empty!26505)))

(declare-fun b!1084762 () Bool)

(declare-fun res!723284 () Bool)

(assert (=> b!1084762 (=> (not res!723284) (not e!619747))))

(assert (=> b!1084762 (= res!723284 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34163 _keys!1070))))))

(declare-fun mapNonEmpty!41512 () Bool)

(declare-fun tp!79359 () Bool)

(assert (=> mapNonEmpty!41512 (= mapRes!41512 (and tp!79359 e!619741))))

(declare-fun mapValue!41512 () ValueCell!12543)

(declare-fun mapKey!41512 () (_ BitVec 32))

(declare-fun mapRest!41512 () (Array (_ BitVec 32) ValueCell!12543))

(assert (=> mapNonEmpty!41512 (= (arr!33627 _values!874) (store mapRest!41512 mapKey!41512 mapValue!41512))))

(declare-fun b!1084763 () Bool)

(assert (=> b!1084763 (= e!619745 true)))

(declare-fun lt!480939 () ListLongMap!14915)

(declare-fun lt!480931 () ListLongMap!14915)

(assert (=> b!1084763 (= (-!754 lt!480939 k0!904) lt!480931)))

(declare-fun lt!480930 () Unit!35623)

(declare-fun addRemoveCommutativeForDiffKeys!2 (ListLongMap!14915 (_ BitVec 64) V!40467 (_ BitVec 64)) Unit!35623)

(assert (=> b!1084763 (= lt!480930 (addRemoveCommutativeForDiffKeys!2 lt!480936 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!480941 () tuple2!16934)

(declare-fun +!3206 (ListLongMap!14915 tuple2!16934) ListLongMap!14915)

(assert (=> b!1084763 (= lt!480937 (+!3206 lt!480931 lt!480941))))

(declare-fun lt!480928 () tuple2!16934)

(assert (=> b!1084763 (= lt!480931 (+!3206 lt!480938 lt!480928))))

(assert (=> b!1084763 (= lt!480932 (+!3206 lt!480939 lt!480941))))

(assert (=> b!1084763 (= lt!480939 (+!3206 lt!480936 lt!480928))))

(assert (=> b!1084763 (= lt!480937 (+!3206 (+!3206 lt!480935 lt!480928) lt!480941))))

(assert (=> b!1084763 (= lt!480941 (tuple2!16935 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1084763 (= lt!480928 (tuple2!16935 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(assert (= (and start!95886 res!723286) b!1084759))

(assert (= (and b!1084759 res!723285) b!1084753))

(assert (= (and b!1084753 res!723279) b!1084757))

(assert (= (and b!1084757 res!723282) b!1084762))

(assert (= (and b!1084762 res!723284) b!1084761))

(assert (= (and b!1084761 res!723283) b!1084758))

(assert (= (and b!1084758 res!723278) b!1084760))

(assert (= (and b!1084760 res!723280) b!1084756))

(assert (= (and b!1084756 res!723287) b!1084751))

(assert (= (and b!1084751 (not res!723281)) b!1084763))

(assert (= (and b!1084755 condMapEmpty!41512) mapIsEmpty!41512))

(assert (= (and b!1084755 (not condMapEmpty!41512)) mapNonEmpty!41512))

(get-info :version)

(assert (= (and mapNonEmpty!41512 ((_ is ValueCellFull!12543) mapValue!41512)) b!1084752))

(assert (= (and b!1084755 ((_ is ValueCellFull!12543) mapDefault!41512)) b!1084754))

(assert (= start!95886 b!1084755))

(declare-fun b_lambda!17203 () Bool)

(assert (=> (not b_lambda!17203) (not b!1084751)))

(declare-fun t!33143 () Bool)

(declare-fun tb!7389 () Bool)

(assert (=> (and start!95886 (= defaultEntry!882 defaultEntry!882) t!33143) tb!7389))

(declare-fun result!15289 () Bool)

(assert (=> tb!7389 (= result!15289 tp_is_empty!26505)))

(assert (=> b!1084751 t!33143))

(declare-fun b_and!35701 () Bool)

(assert (= b_and!35699 (and (=> t!33143 result!15289) b_and!35701)))

(declare-fun m!1002649 () Bool)

(assert (=> mapNonEmpty!41512 m!1002649))

(declare-fun m!1002651 () Bool)

(assert (=> b!1084760 m!1002651))

(declare-fun m!1002653 () Bool)

(assert (=> b!1084760 m!1002653))

(declare-fun m!1002655 () Bool)

(assert (=> start!95886 m!1002655))

(declare-fun m!1002657 () Bool)

(assert (=> start!95886 m!1002657))

(declare-fun m!1002659 () Bool)

(assert (=> start!95886 m!1002659))

(declare-fun m!1002661 () Bool)

(assert (=> b!1084751 m!1002661))

(declare-fun m!1002663 () Bool)

(assert (=> b!1084751 m!1002663))

(declare-fun m!1002665 () Bool)

(assert (=> b!1084751 m!1002665))

(declare-fun m!1002667 () Bool)

(assert (=> b!1084751 m!1002667))

(declare-fun m!1002669 () Bool)

(assert (=> b!1084751 m!1002669))

(declare-fun m!1002671 () Bool)

(assert (=> b!1084751 m!1002671))

(declare-fun m!1002673 () Bool)

(assert (=> b!1084751 m!1002673))

(declare-fun m!1002675 () Bool)

(assert (=> b!1084751 m!1002675))

(declare-fun m!1002677 () Bool)

(assert (=> b!1084751 m!1002677))

(declare-fun m!1002679 () Bool)

(assert (=> b!1084751 m!1002679))

(declare-fun m!1002681 () Bool)

(assert (=> b!1084753 m!1002681))

(declare-fun m!1002683 () Bool)

(assert (=> b!1084763 m!1002683))

(declare-fun m!1002685 () Bool)

(assert (=> b!1084763 m!1002685))

(declare-fun m!1002687 () Bool)

(assert (=> b!1084763 m!1002687))

(declare-fun m!1002689 () Bool)

(assert (=> b!1084763 m!1002689))

(declare-fun m!1002691 () Bool)

(assert (=> b!1084763 m!1002691))

(declare-fun m!1002693 () Bool)

(assert (=> b!1084763 m!1002693))

(declare-fun m!1002695 () Bool)

(assert (=> b!1084763 m!1002695))

(assert (=> b!1084763 m!1002687))

(declare-fun m!1002697 () Bool)

(assert (=> b!1084763 m!1002697))

(declare-fun m!1002699 () Bool)

(assert (=> b!1084757 m!1002699))

(declare-fun m!1002701 () Bool)

(assert (=> b!1084758 m!1002701))

(declare-fun m!1002703 () Bool)

(assert (=> b!1084761 m!1002703))

(declare-fun m!1002705 () Bool)

(assert (=> b!1084756 m!1002705))

(check-sat (not b!1084760) (not b!1084761) (not b!1084757) tp_is_empty!26505 (not mapNonEmpty!41512) (not b_lambda!17203) (not b!1084753) (not b!1084756) (not b_next!22503) b_and!35701 (not start!95886) (not b!1084751) (not b!1084763))
(check-sat b_and!35701 (not b_next!22503))
