; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20480 () Bool)

(assert start!20480)

(declare-fun b_free!5127 () Bool)

(declare-fun b_next!5127 () Bool)

(assert (=> start!20480 (= b_free!5127 (not b_next!5127))))

(declare-fun tp!18413 () Bool)

(declare-fun b_and!11891 () Bool)

(assert (=> start!20480 (= tp!18413 b_and!11891)))

(declare-fun b!202879 () Bool)

(declare-fun e!132865 () Bool)

(declare-fun e!132864 () Bool)

(assert (=> b!202879 (= e!132865 e!132864)))

(declare-fun res!97363 () Bool)

(assert (=> b!202879 (=> res!97363 e!132864)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!202879 (= res!97363 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6291 0))(
  ( (V!6292 (val!2536 Int)) )
))
(declare-datatypes ((tuple2!3840 0))(
  ( (tuple2!3841 (_1!1930 (_ BitVec 64)) (_2!1930 V!6291)) )
))
(declare-datatypes ((List!2770 0))(
  ( (Nil!2767) (Cons!2766 (h!3408 tuple2!3840) (t!7709 List!2770)) )
))
(declare-datatypes ((ListLongMap!2767 0))(
  ( (ListLongMap!2768 (toList!1399 List!2770)) )
))
(declare-fun lt!102131 () ListLongMap!2767)

(declare-fun lt!102132 () ListLongMap!2767)

(assert (=> b!202879 (= lt!102131 lt!102132)))

(declare-fun lt!102126 () ListLongMap!2767)

(declare-fun lt!102130 () tuple2!3840)

(declare-fun +!416 (ListLongMap!2767 tuple2!3840) ListLongMap!2767)

(assert (=> b!202879 (= lt!102132 (+!416 lt!102126 lt!102130))))

(declare-fun lt!102128 () ListLongMap!2767)

(declare-fun lt!102124 () ListLongMap!2767)

(assert (=> b!202879 (= lt!102128 lt!102124)))

(declare-fun lt!102123 () ListLongMap!2767)

(assert (=> b!202879 (= lt!102124 (+!416 lt!102123 lt!102130))))

(declare-fun lt!102127 () ListLongMap!2767)

(assert (=> b!202879 (= lt!102131 (+!416 lt!102127 lt!102130))))

(declare-fun zeroValue!615 () V!6291)

(assert (=> b!202879 (= lt!102130 (tuple2!3841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8543 () Bool)

(declare-fun mapRes!8543 () Bool)

(declare-fun tp!18412 () Bool)

(declare-fun e!132866 () Bool)

(assert (=> mapNonEmpty!8543 (= mapRes!8543 (and tp!18412 e!132866))))

(declare-datatypes ((ValueCell!2148 0))(
  ( (ValueCellFull!2148 (v!4502 V!6291)) (EmptyCell!2148) )
))
(declare-fun mapRest!8543 () (Array (_ BitVec 32) ValueCell!2148))

(declare-datatypes ((array!9190 0))(
  ( (array!9191 (arr!4345 (Array (_ BitVec 32) ValueCell!2148)) (size!4670 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9190)

(declare-fun mapValue!8543 () ValueCell!2148)

(declare-fun mapKey!8543 () (_ BitVec 32))

(assert (=> mapNonEmpty!8543 (= (arr!4345 _values!649) (store mapRest!8543 mapKey!8543 mapValue!8543))))

(declare-fun b!202880 () Bool)

(declare-fun res!97369 () Bool)

(declare-fun e!132863 () Bool)

(assert (=> b!202880 (=> (not res!97369) (not e!132863))))

(declare-datatypes ((array!9192 0))(
  ( (array!9193 (arr!4346 (Array (_ BitVec 32) (_ BitVec 64))) (size!4671 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9192)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9192 (_ BitVec 32)) Bool)

(assert (=> b!202880 (= res!97369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8543 () Bool)

(assert (=> mapIsEmpty!8543 mapRes!8543))

(declare-fun b!202881 () Bool)

(declare-fun e!132867 () Bool)

(declare-fun e!132862 () Bool)

(assert (=> b!202881 (= e!132867 (and e!132862 mapRes!8543))))

(declare-fun condMapEmpty!8543 () Bool)

(declare-fun mapDefault!8543 () ValueCell!2148)

(assert (=> b!202881 (= condMapEmpty!8543 (= (arr!4345 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2148)) mapDefault!8543)))))

(declare-fun b!202882 () Bool)

(declare-fun tp_is_empty!4983 () Bool)

(assert (=> b!202882 (= e!132866 tp_is_empty!4983)))

(declare-fun b!202883 () Bool)

(declare-fun res!97366 () Bool)

(assert (=> b!202883 (=> (not res!97366) (not e!132863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202883 (= res!97366 (validKeyInArray!0 k0!843))))

(declare-fun b!202885 () Bool)

(declare-fun res!97365 () Bool)

(assert (=> b!202885 (=> (not res!97365) (not e!132863))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202885 (= res!97365 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4671 _keys!825))))))

(declare-fun b!202886 () Bool)

(declare-fun res!97364 () Bool)

(assert (=> b!202886 (=> (not res!97364) (not e!132863))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202886 (= res!97364 (and (= (size!4670 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4671 _keys!825) (size!4670 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202887 () Bool)

(assert (=> b!202887 (= e!132862 tp_is_empty!4983)))

(declare-fun b!202888 () Bool)

(declare-fun res!97367 () Bool)

(assert (=> b!202888 (=> (not res!97367) (not e!132863))))

(assert (=> b!202888 (= res!97367 (= (select (arr!4346 _keys!825) i!601) k0!843))))

(declare-fun b!202889 () Bool)

(assert (=> b!202889 (= e!132863 (not e!132865))))

(declare-fun res!97368 () Bool)

(assert (=> b!202889 (=> res!97368 e!132865)))

(assert (=> b!202889 (= res!97368 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6291)

(declare-fun getCurrentListMap!973 (array!9192 array!9190 (_ BitVec 32) (_ BitVec 32) V!6291 V!6291 (_ BitVec 32) Int) ListLongMap!2767)

(assert (=> b!202889 (= lt!102128 (getCurrentListMap!973 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102129 () array!9190)

(assert (=> b!202889 (= lt!102131 (getCurrentListMap!973 _keys!825 lt!102129 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202889 (and (= lt!102127 lt!102126) (= lt!102126 lt!102127))))

(declare-fun lt!102133 () tuple2!3840)

(assert (=> b!202889 (= lt!102126 (+!416 lt!102123 lt!102133))))

(declare-fun v!520 () V!6291)

(assert (=> b!202889 (= lt!102133 (tuple2!3841 k0!843 v!520))))

(declare-datatypes ((Unit!6133 0))(
  ( (Unit!6134) )
))
(declare-fun lt!102122 () Unit!6133)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!86 (array!9192 array!9190 (_ BitVec 32) (_ BitVec 32) V!6291 V!6291 (_ BitVec 32) (_ BitVec 64) V!6291 (_ BitVec 32) Int) Unit!6133)

(assert (=> b!202889 (= lt!102122 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!86 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!344 (array!9192 array!9190 (_ BitVec 32) (_ BitVec 32) V!6291 V!6291 (_ BitVec 32) Int) ListLongMap!2767)

(assert (=> b!202889 (= lt!102127 (getCurrentListMapNoExtraKeys!344 _keys!825 lt!102129 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202889 (= lt!102129 (array!9191 (store (arr!4345 _values!649) i!601 (ValueCellFull!2148 v!520)) (size!4670 _values!649)))))

(assert (=> b!202889 (= lt!102123 (getCurrentListMapNoExtraKeys!344 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202890 () Bool)

(assert (=> b!202890 (= e!132864 true)))

(assert (=> b!202890 (= lt!102132 (+!416 lt!102124 lt!102133))))

(declare-fun lt!102125 () Unit!6133)

(declare-fun addCommutativeForDiffKeys!132 (ListLongMap!2767 (_ BitVec 64) V!6291 (_ BitVec 64) V!6291) Unit!6133)

(assert (=> b!202890 (= lt!102125 (addCommutativeForDiffKeys!132 lt!102123 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun res!97361 () Bool)

(assert (=> start!20480 (=> (not res!97361) (not e!132863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20480 (= res!97361 (validMask!0 mask!1149))))

(assert (=> start!20480 e!132863))

(declare-fun array_inv!2859 (array!9190) Bool)

(assert (=> start!20480 (and (array_inv!2859 _values!649) e!132867)))

(assert (=> start!20480 true))

(assert (=> start!20480 tp_is_empty!4983))

(declare-fun array_inv!2860 (array!9192) Bool)

(assert (=> start!20480 (array_inv!2860 _keys!825)))

(assert (=> start!20480 tp!18413))

(declare-fun b!202884 () Bool)

(declare-fun res!97362 () Bool)

(assert (=> b!202884 (=> (not res!97362) (not e!132863))))

(declare-datatypes ((List!2771 0))(
  ( (Nil!2768) (Cons!2767 (h!3409 (_ BitVec 64)) (t!7710 List!2771)) )
))
(declare-fun arrayNoDuplicates!0 (array!9192 (_ BitVec 32) List!2771) Bool)

(assert (=> b!202884 (= res!97362 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2768))))

(assert (= (and start!20480 res!97361) b!202886))

(assert (= (and b!202886 res!97364) b!202880))

(assert (= (and b!202880 res!97369) b!202884))

(assert (= (and b!202884 res!97362) b!202885))

(assert (= (and b!202885 res!97365) b!202883))

(assert (= (and b!202883 res!97366) b!202888))

(assert (= (and b!202888 res!97367) b!202889))

(assert (= (and b!202889 (not res!97368)) b!202879))

(assert (= (and b!202879 (not res!97363)) b!202890))

(assert (= (and b!202881 condMapEmpty!8543) mapIsEmpty!8543))

(assert (= (and b!202881 (not condMapEmpty!8543)) mapNonEmpty!8543))

(get-info :version)

(assert (= (and mapNonEmpty!8543 ((_ is ValueCellFull!2148) mapValue!8543)) b!202882))

(assert (= (and b!202881 ((_ is ValueCellFull!2148) mapDefault!8543)) b!202887))

(assert (= start!20480 b!202881))

(declare-fun m!230269 () Bool)

(assert (=> start!20480 m!230269))

(declare-fun m!230271 () Bool)

(assert (=> start!20480 m!230271))

(declare-fun m!230273 () Bool)

(assert (=> start!20480 m!230273))

(declare-fun m!230275 () Bool)

(assert (=> b!202890 m!230275))

(declare-fun m!230277 () Bool)

(assert (=> b!202890 m!230277))

(declare-fun m!230279 () Bool)

(assert (=> mapNonEmpty!8543 m!230279))

(declare-fun m!230281 () Bool)

(assert (=> b!202879 m!230281))

(declare-fun m!230283 () Bool)

(assert (=> b!202879 m!230283))

(declare-fun m!230285 () Bool)

(assert (=> b!202879 m!230285))

(declare-fun m!230287 () Bool)

(assert (=> b!202883 m!230287))

(declare-fun m!230289 () Bool)

(assert (=> b!202889 m!230289))

(declare-fun m!230291 () Bool)

(assert (=> b!202889 m!230291))

(declare-fun m!230293 () Bool)

(assert (=> b!202889 m!230293))

(declare-fun m!230295 () Bool)

(assert (=> b!202889 m!230295))

(declare-fun m!230297 () Bool)

(assert (=> b!202889 m!230297))

(declare-fun m!230299 () Bool)

(assert (=> b!202889 m!230299))

(declare-fun m!230301 () Bool)

(assert (=> b!202889 m!230301))

(declare-fun m!230303 () Bool)

(assert (=> b!202880 m!230303))

(declare-fun m!230305 () Bool)

(assert (=> b!202888 m!230305))

(declare-fun m!230307 () Bool)

(assert (=> b!202884 m!230307))

(check-sat (not b!202883) (not b!202890) b_and!11891 (not b!202889) (not mapNonEmpty!8543) (not b!202879) (not b!202884) (not start!20480) (not b_next!5127) tp_is_empty!4983 (not b!202880))
(check-sat b_and!11891 (not b_next!5127))
