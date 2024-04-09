; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20654 () Bool)

(assert start!20654)

(declare-fun b_free!5301 () Bool)

(declare-fun b_next!5301 () Bool)

(assert (=> start!20654 (= b_free!5301 (not b_next!5301))))

(declare-fun tp!18934 () Bool)

(declare-fun b_and!12065 () Bool)

(assert (=> start!20654 (= tp!18934 b_and!12065)))

(declare-fun b!206020 () Bool)

(declare-fun res!99727 () Bool)

(declare-fun e!134693 () Bool)

(assert (=> b!206020 (=> (not res!99727) (not e!134693))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9524 0))(
  ( (array!9525 (arr!4512 (Array (_ BitVec 32) (_ BitVec 64))) (size!4837 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9524)

(assert (=> b!206020 (= res!99727 (= (select (arr!4512 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8804 () Bool)

(declare-fun mapRes!8804 () Bool)

(assert (=> mapIsEmpty!8804 mapRes!8804))

(declare-fun b!206021 () Bool)

(declare-fun e!134691 () Bool)

(declare-fun tp_is_empty!5157 () Bool)

(assert (=> b!206021 (= e!134691 tp_is_empty!5157)))

(declare-fun res!99719 () Bool)

(assert (=> start!20654 (=> (not res!99719) (not e!134693))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20654 (= res!99719 (validMask!0 mask!1149))))

(assert (=> start!20654 e!134693))

(declare-datatypes ((V!6523 0))(
  ( (V!6524 (val!2623 Int)) )
))
(declare-datatypes ((ValueCell!2235 0))(
  ( (ValueCellFull!2235 (v!4589 V!6523)) (EmptyCell!2235) )
))
(declare-datatypes ((array!9526 0))(
  ( (array!9527 (arr!4513 (Array (_ BitVec 32) ValueCell!2235)) (size!4838 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9526)

(declare-fun e!134690 () Bool)

(declare-fun array_inv!2971 (array!9526) Bool)

(assert (=> start!20654 (and (array_inv!2971 _values!649) e!134690)))

(assert (=> start!20654 true))

(assert (=> start!20654 tp_is_empty!5157))

(declare-fun array_inv!2972 (array!9524) Bool)

(assert (=> start!20654 (array_inv!2972 _keys!825)))

(assert (=> start!20654 tp!18934))

(declare-fun b!206022 () Bool)

(declare-fun res!99724 () Bool)

(assert (=> b!206022 (=> (not res!99724) (not e!134693))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206022 (= res!99724 (validKeyInArray!0 k0!843))))

(declare-fun b!206023 () Bool)

(declare-fun res!99722 () Bool)

(assert (=> b!206023 (=> (not res!99722) (not e!134693))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!206023 (= res!99722 (and (= (size!4838 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4837 _keys!825) (size!4838 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206024 () Bool)

(declare-fun e!134692 () Bool)

(declare-fun e!134695 () Bool)

(assert (=> b!206024 (= e!134692 e!134695)))

(declare-fun res!99721 () Bool)

(assert (=> b!206024 (=> res!99721 e!134695)))

(assert (=> b!206024 (= res!99721 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3978 0))(
  ( (tuple2!3979 (_1!1999 (_ BitVec 64)) (_2!1999 V!6523)) )
))
(declare-datatypes ((List!2894 0))(
  ( (Nil!2891) (Cons!2890 (h!3532 tuple2!3978) (t!7833 List!2894)) )
))
(declare-datatypes ((ListLongMap!2905 0))(
  ( (ListLongMap!2906 (toList!1468 List!2894)) )
))
(declare-fun lt!105225 () ListLongMap!2905)

(declare-fun lt!105229 () ListLongMap!2905)

(assert (=> b!206024 (= lt!105225 lt!105229)))

(declare-fun lt!105226 () ListLongMap!2905)

(declare-fun lt!105221 () tuple2!3978)

(declare-fun +!485 (ListLongMap!2905 tuple2!3978) ListLongMap!2905)

(assert (=> b!206024 (= lt!105229 (+!485 lt!105226 lt!105221))))

(declare-fun lt!105223 () ListLongMap!2905)

(declare-fun lt!105219 () ListLongMap!2905)

(assert (=> b!206024 (= lt!105223 lt!105219)))

(declare-fun lt!105224 () ListLongMap!2905)

(assert (=> b!206024 (= lt!105219 (+!485 lt!105224 lt!105221))))

(declare-fun lt!105228 () ListLongMap!2905)

(assert (=> b!206024 (= lt!105223 (+!485 lt!105228 lt!105221))))

(declare-fun minValue!615 () V!6523)

(assert (=> b!206024 (= lt!105221 (tuple2!3979 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206025 () Bool)

(declare-fun e!134689 () Bool)

(assert (=> b!206025 (= e!134689 tp_is_empty!5157)))

(declare-fun b!206026 () Bool)

(assert (=> b!206026 (= e!134695 true)))

(declare-fun lt!105220 () tuple2!3978)

(assert (=> b!206026 (= lt!105219 (+!485 lt!105229 lt!105220))))

(declare-fun v!520 () V!6523)

(declare-datatypes ((Unit!6265 0))(
  ( (Unit!6266) )
))
(declare-fun lt!105227 () Unit!6265)

(declare-fun addCommutativeForDiffKeys!183 (ListLongMap!2905 (_ BitVec 64) V!6523 (_ BitVec 64) V!6523) Unit!6265)

(assert (=> b!206026 (= lt!105227 (addCommutativeForDiffKeys!183 lt!105226 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206027 () Bool)

(assert (=> b!206027 (= e!134693 (not e!134692))))

(declare-fun res!99725 () Bool)

(assert (=> b!206027 (=> res!99725 e!134692)))

(assert (=> b!206027 (= res!99725 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6523)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1032 (array!9524 array!9526 (_ BitVec 32) (_ BitVec 32) V!6523 V!6523 (_ BitVec 32) Int) ListLongMap!2905)

(assert (=> b!206027 (= lt!105225 (getCurrentListMap!1032 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105222 () array!9526)

(assert (=> b!206027 (= lt!105223 (getCurrentListMap!1032 _keys!825 lt!105222 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206027 (and (= lt!105228 lt!105224) (= lt!105224 lt!105228))))

(assert (=> b!206027 (= lt!105224 (+!485 lt!105226 lt!105220))))

(assert (=> b!206027 (= lt!105220 (tuple2!3979 k0!843 v!520))))

(declare-fun lt!105218 () Unit!6265)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!145 (array!9524 array!9526 (_ BitVec 32) (_ BitVec 32) V!6523 V!6523 (_ BitVec 32) (_ BitVec 64) V!6523 (_ BitVec 32) Int) Unit!6265)

(assert (=> b!206027 (= lt!105218 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!145 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!403 (array!9524 array!9526 (_ BitVec 32) (_ BitVec 32) V!6523 V!6523 (_ BitVec 32) Int) ListLongMap!2905)

(assert (=> b!206027 (= lt!105228 (getCurrentListMapNoExtraKeys!403 _keys!825 lt!105222 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206027 (= lt!105222 (array!9527 (store (arr!4513 _values!649) i!601 (ValueCellFull!2235 v!520)) (size!4838 _values!649)))))

(assert (=> b!206027 (= lt!105226 (getCurrentListMapNoExtraKeys!403 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206028 () Bool)

(declare-fun res!99720 () Bool)

(assert (=> b!206028 (=> (not res!99720) (not e!134693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9524 (_ BitVec 32)) Bool)

(assert (=> b!206028 (= res!99720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206029 () Bool)

(declare-fun res!99723 () Bool)

(assert (=> b!206029 (=> (not res!99723) (not e!134693))))

(assert (=> b!206029 (= res!99723 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4837 _keys!825))))))

(declare-fun b!206030 () Bool)

(assert (=> b!206030 (= e!134690 (and e!134689 mapRes!8804))))

(declare-fun condMapEmpty!8804 () Bool)

(declare-fun mapDefault!8804 () ValueCell!2235)

(assert (=> b!206030 (= condMapEmpty!8804 (= (arr!4513 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2235)) mapDefault!8804)))))

(declare-fun mapNonEmpty!8804 () Bool)

(declare-fun tp!18935 () Bool)

(assert (=> mapNonEmpty!8804 (= mapRes!8804 (and tp!18935 e!134691))))

(declare-fun mapKey!8804 () (_ BitVec 32))

(declare-fun mapValue!8804 () ValueCell!2235)

(declare-fun mapRest!8804 () (Array (_ BitVec 32) ValueCell!2235))

(assert (=> mapNonEmpty!8804 (= (arr!4513 _values!649) (store mapRest!8804 mapKey!8804 mapValue!8804))))

(declare-fun b!206031 () Bool)

(declare-fun res!99726 () Bool)

(assert (=> b!206031 (=> (not res!99726) (not e!134693))))

(declare-datatypes ((List!2895 0))(
  ( (Nil!2892) (Cons!2891 (h!3533 (_ BitVec 64)) (t!7834 List!2895)) )
))
(declare-fun arrayNoDuplicates!0 (array!9524 (_ BitVec 32) List!2895) Bool)

(assert (=> b!206031 (= res!99726 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2892))))

(assert (= (and start!20654 res!99719) b!206023))

(assert (= (and b!206023 res!99722) b!206028))

(assert (= (and b!206028 res!99720) b!206031))

(assert (= (and b!206031 res!99726) b!206029))

(assert (= (and b!206029 res!99723) b!206022))

(assert (= (and b!206022 res!99724) b!206020))

(assert (= (and b!206020 res!99727) b!206027))

(assert (= (and b!206027 (not res!99725)) b!206024))

(assert (= (and b!206024 (not res!99721)) b!206026))

(assert (= (and b!206030 condMapEmpty!8804) mapIsEmpty!8804))

(assert (= (and b!206030 (not condMapEmpty!8804)) mapNonEmpty!8804))

(get-info :version)

(assert (= (and mapNonEmpty!8804 ((_ is ValueCellFull!2235) mapValue!8804)) b!206021))

(assert (= (and b!206030 ((_ is ValueCellFull!2235) mapDefault!8804)) b!206025))

(assert (= start!20654 b!206030))

(declare-fun m!233737 () Bool)

(assert (=> b!206024 m!233737))

(declare-fun m!233739 () Bool)

(assert (=> b!206024 m!233739))

(declare-fun m!233741 () Bool)

(assert (=> b!206024 m!233741))

(declare-fun m!233743 () Bool)

(assert (=> b!206020 m!233743))

(declare-fun m!233745 () Bool)

(assert (=> b!206027 m!233745))

(declare-fun m!233747 () Bool)

(assert (=> b!206027 m!233747))

(declare-fun m!233749 () Bool)

(assert (=> b!206027 m!233749))

(declare-fun m!233751 () Bool)

(assert (=> b!206027 m!233751))

(declare-fun m!233753 () Bool)

(assert (=> b!206027 m!233753))

(declare-fun m!233755 () Bool)

(assert (=> b!206027 m!233755))

(declare-fun m!233757 () Bool)

(assert (=> b!206027 m!233757))

(declare-fun m!233759 () Bool)

(assert (=> start!20654 m!233759))

(declare-fun m!233761 () Bool)

(assert (=> start!20654 m!233761))

(declare-fun m!233763 () Bool)

(assert (=> start!20654 m!233763))

(declare-fun m!233765 () Bool)

(assert (=> b!206026 m!233765))

(declare-fun m!233767 () Bool)

(assert (=> b!206026 m!233767))

(declare-fun m!233769 () Bool)

(assert (=> mapNonEmpty!8804 m!233769))

(declare-fun m!233771 () Bool)

(assert (=> b!206028 m!233771))

(declare-fun m!233773 () Bool)

(assert (=> b!206022 m!233773))

(declare-fun m!233775 () Bool)

(assert (=> b!206031 m!233775))

(check-sat tp_is_empty!5157 (not b!206028) (not b!206022) (not b!206027) (not start!20654) (not b_next!5301) b_and!12065 (not b!206024) (not mapNonEmpty!8804) (not b!206031) (not b!206026))
(check-sat b_and!12065 (not b_next!5301))
