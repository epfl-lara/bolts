; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39242 () Bool)

(assert start!39242)

(declare-fun b_free!9501 () Bool)

(declare-fun b_next!9501 () Bool)

(assert (=> start!39242 (= b_free!9501 (not b_next!9501))))

(declare-fun tp!34031 () Bool)

(declare-fun b_and!16905 () Bool)

(assert (=> start!39242 (= tp!34031 b_and!16905)))

(declare-fun b!413886 () Bool)

(declare-fun e!247412 () Bool)

(declare-fun tp_is_empty!10653 () Bool)

(assert (=> b!413886 (= e!247412 tp_is_empty!10653)))

(declare-fun b!413887 () Bool)

(declare-fun res!240665 () Bool)

(declare-fun e!247410 () Bool)

(assert (=> b!413887 (=> (not res!240665) (not e!247410))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413887 (= res!240665 (validKeyInArray!0 k0!794))))

(declare-fun res!240670 () Bool)

(assert (=> start!39242 (=> (not res!240670) (not e!247410))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25145 0))(
  ( (array!25146 (arr!12019 (Array (_ BitVec 32) (_ BitVec 64))) (size!12371 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25145)

(assert (=> start!39242 (= res!240670 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12371 _keys!709))))))

(assert (=> start!39242 e!247410))

(assert (=> start!39242 tp_is_empty!10653))

(assert (=> start!39242 tp!34031))

(assert (=> start!39242 true))

(declare-datatypes ((V!15309 0))(
  ( (V!15310 (val!5371 Int)) )
))
(declare-datatypes ((ValueCell!4983 0))(
  ( (ValueCellFull!4983 (v!7614 V!15309)) (EmptyCell!4983) )
))
(declare-datatypes ((array!25147 0))(
  ( (array!25148 (arr!12020 (Array (_ BitVec 32) ValueCell!4983)) (size!12372 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25147)

(declare-fun e!247416 () Bool)

(declare-fun array_inv!8768 (array!25147) Bool)

(assert (=> start!39242 (and (array_inv!8768 _values!549) e!247416)))

(declare-fun array_inv!8769 (array!25145) Bool)

(assert (=> start!39242 (array_inv!8769 _keys!709)))

(declare-fun b!413888 () Bool)

(declare-fun res!240668 () Bool)

(declare-fun e!247414 () Bool)

(assert (=> b!413888 (=> (not res!240668) (not e!247414))))

(declare-fun lt!189869 () array!25145)

(declare-datatypes ((List!6969 0))(
  ( (Nil!6966) (Cons!6965 (h!7821 (_ BitVec 64)) (t!12151 List!6969)) )
))
(declare-fun arrayNoDuplicates!0 (array!25145 (_ BitVec 32) List!6969) Bool)

(assert (=> b!413888 (= res!240668 (arrayNoDuplicates!0 lt!189869 #b00000000000000000000000000000000 Nil!6966))))

(declare-fun b!413889 () Bool)

(declare-fun e!247417 () Bool)

(assert (=> b!413889 (= e!247417 tp_is_empty!10653)))

(declare-fun b!413890 () Bool)

(declare-fun e!247415 () Bool)

(assert (=> b!413890 (= e!247414 e!247415)))

(declare-fun res!240667 () Bool)

(assert (=> b!413890 (=> (not res!240667) (not e!247415))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413890 (= res!240667 (= from!863 i!563))))

(declare-fun minValue!515 () V!15309)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6910 0))(
  ( (tuple2!6911 (_1!3465 (_ BitVec 64)) (_2!3465 V!15309)) )
))
(declare-datatypes ((List!6970 0))(
  ( (Nil!6967) (Cons!6966 (h!7822 tuple2!6910) (t!12152 List!6970)) )
))
(declare-datatypes ((ListLongMap!5837 0))(
  ( (ListLongMap!5838 (toList!2934 List!6970)) )
))
(declare-fun lt!189866 () ListLongMap!5837)

(declare-fun lt!189867 () array!25147)

(declare-fun zeroValue!515 () V!15309)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1142 (array!25145 array!25147 (_ BitVec 32) (_ BitVec 32) V!15309 V!15309 (_ BitVec 32) Int) ListLongMap!5837)

(assert (=> b!413890 (= lt!189866 (getCurrentListMapNoExtraKeys!1142 lt!189869 lt!189867 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15309)

(assert (=> b!413890 (= lt!189867 (array!25148 (store (arr!12020 _values!549) i!563 (ValueCellFull!4983 v!412)) (size!12372 _values!549)))))

(declare-fun lt!189868 () ListLongMap!5837)

(assert (=> b!413890 (= lt!189868 (getCurrentListMapNoExtraKeys!1142 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413891 () Bool)

(declare-fun res!240673 () Bool)

(assert (=> b!413891 (=> (not res!240673) (not e!247410))))

(assert (=> b!413891 (= res!240673 (or (= (select (arr!12019 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12019 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413892 () Bool)

(assert (=> b!413892 (= e!247415 (not true))))

(declare-fun e!247411 () Bool)

(assert (=> b!413892 e!247411))

(declare-fun c!54890 () Bool)

(assert (=> b!413892 (= c!54890 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12207 0))(
  ( (Unit!12208) )
))
(declare-fun lt!189870 () Unit!12207)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!366 (array!25145 array!25147 (_ BitVec 32) (_ BitVec 32) V!15309 V!15309 (_ BitVec 32) (_ BitVec 64) V!15309 (_ BitVec 32) Int) Unit!12207)

(assert (=> b!413892 (= lt!189870 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!366 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413893 () Bool)

(declare-fun call!28679 () ListLongMap!5837)

(declare-fun call!28678 () ListLongMap!5837)

(declare-fun +!1152 (ListLongMap!5837 tuple2!6910) ListLongMap!5837)

(assert (=> b!413893 (= e!247411 (= call!28678 (+!1152 call!28679 (tuple2!6911 k0!794 v!412))))))

(declare-fun b!413894 () Bool)

(declare-fun res!240671 () Bool)

(assert (=> b!413894 (=> (not res!240671) (not e!247414))))

(assert (=> b!413894 (= res!240671 (bvsle from!863 i!563))))

(declare-fun b!413895 () Bool)

(declare-fun res!240664 () Bool)

(assert (=> b!413895 (=> (not res!240664) (not e!247410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25145 (_ BitVec 32)) Bool)

(assert (=> b!413895 (= res!240664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!28675 () Bool)

(assert (=> bm!28675 (= call!28678 (getCurrentListMapNoExtraKeys!1142 (ite c!54890 lt!189869 _keys!709) (ite c!54890 lt!189867 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28676 () Bool)

(assert (=> bm!28676 (= call!28679 (getCurrentListMapNoExtraKeys!1142 (ite c!54890 _keys!709 lt!189869) (ite c!54890 _values!549 lt!189867) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413896 () Bool)

(declare-fun res!240675 () Bool)

(assert (=> b!413896 (=> (not res!240675) (not e!247410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413896 (= res!240675 (validMask!0 mask!1025))))

(declare-fun b!413897 () Bool)

(declare-fun res!240666 () Bool)

(assert (=> b!413897 (=> (not res!240666) (not e!247410))))

(declare-fun arrayContainsKey!0 (array!25145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413897 (= res!240666 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17601 () Bool)

(declare-fun mapRes!17601 () Bool)

(assert (=> mapIsEmpty!17601 mapRes!17601))

(declare-fun b!413898 () Bool)

(declare-fun res!240669 () Bool)

(assert (=> b!413898 (=> (not res!240669) (not e!247410))))

(assert (=> b!413898 (= res!240669 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6966))))

(declare-fun mapNonEmpty!17601 () Bool)

(declare-fun tp!34032 () Bool)

(assert (=> mapNonEmpty!17601 (= mapRes!17601 (and tp!34032 e!247417))))

(declare-fun mapRest!17601 () (Array (_ BitVec 32) ValueCell!4983))

(declare-fun mapValue!17601 () ValueCell!4983)

(declare-fun mapKey!17601 () (_ BitVec 32))

(assert (=> mapNonEmpty!17601 (= (arr!12020 _values!549) (store mapRest!17601 mapKey!17601 mapValue!17601))))

(declare-fun b!413899 () Bool)

(assert (=> b!413899 (= e!247410 e!247414)))

(declare-fun res!240674 () Bool)

(assert (=> b!413899 (=> (not res!240674) (not e!247414))))

(assert (=> b!413899 (= res!240674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189869 mask!1025))))

(assert (=> b!413899 (= lt!189869 (array!25146 (store (arr!12019 _keys!709) i!563 k0!794) (size!12371 _keys!709)))))

(declare-fun b!413900 () Bool)

(declare-fun res!240672 () Bool)

(assert (=> b!413900 (=> (not res!240672) (not e!247410))))

(assert (=> b!413900 (= res!240672 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12371 _keys!709))))))

(declare-fun b!413901 () Bool)

(assert (=> b!413901 (= e!247416 (and e!247412 mapRes!17601))))

(declare-fun condMapEmpty!17601 () Bool)

(declare-fun mapDefault!17601 () ValueCell!4983)

(assert (=> b!413901 (= condMapEmpty!17601 (= (arr!12020 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4983)) mapDefault!17601)))))

(declare-fun b!413902 () Bool)

(assert (=> b!413902 (= e!247411 (= call!28679 call!28678))))

(declare-fun b!413903 () Bool)

(declare-fun res!240663 () Bool)

(assert (=> b!413903 (=> (not res!240663) (not e!247410))))

(assert (=> b!413903 (= res!240663 (and (= (size!12372 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12371 _keys!709) (size!12372 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!39242 res!240670) b!413896))

(assert (= (and b!413896 res!240675) b!413903))

(assert (= (and b!413903 res!240663) b!413895))

(assert (= (and b!413895 res!240664) b!413898))

(assert (= (and b!413898 res!240669) b!413900))

(assert (= (and b!413900 res!240672) b!413887))

(assert (= (and b!413887 res!240665) b!413891))

(assert (= (and b!413891 res!240673) b!413897))

(assert (= (and b!413897 res!240666) b!413899))

(assert (= (and b!413899 res!240674) b!413888))

(assert (= (and b!413888 res!240668) b!413894))

(assert (= (and b!413894 res!240671) b!413890))

(assert (= (and b!413890 res!240667) b!413892))

(assert (= (and b!413892 c!54890) b!413893))

(assert (= (and b!413892 (not c!54890)) b!413902))

(assert (= (or b!413893 b!413902) bm!28675))

(assert (= (or b!413893 b!413902) bm!28676))

(assert (= (and b!413901 condMapEmpty!17601) mapIsEmpty!17601))

(assert (= (and b!413901 (not condMapEmpty!17601)) mapNonEmpty!17601))

(get-info :version)

(assert (= (and mapNonEmpty!17601 ((_ is ValueCellFull!4983) mapValue!17601)) b!413889))

(assert (= (and b!413901 ((_ is ValueCellFull!4983) mapDefault!17601)) b!413886))

(assert (= start!39242 b!413901))

(declare-fun m!403235 () Bool)

(assert (=> bm!28675 m!403235))

(declare-fun m!403237 () Bool)

(assert (=> b!413893 m!403237))

(declare-fun m!403239 () Bool)

(assert (=> b!413890 m!403239))

(declare-fun m!403241 () Bool)

(assert (=> b!413890 m!403241))

(declare-fun m!403243 () Bool)

(assert (=> b!413890 m!403243))

(declare-fun m!403245 () Bool)

(assert (=> b!413898 m!403245))

(declare-fun m!403247 () Bool)

(assert (=> b!413896 m!403247))

(declare-fun m!403249 () Bool)

(assert (=> b!413897 m!403249))

(declare-fun m!403251 () Bool)

(assert (=> b!413888 m!403251))

(declare-fun m!403253 () Bool)

(assert (=> b!413891 m!403253))

(declare-fun m!403255 () Bool)

(assert (=> b!413892 m!403255))

(declare-fun m!403257 () Bool)

(assert (=> b!413895 m!403257))

(declare-fun m!403259 () Bool)

(assert (=> start!39242 m!403259))

(declare-fun m!403261 () Bool)

(assert (=> start!39242 m!403261))

(declare-fun m!403263 () Bool)

(assert (=> mapNonEmpty!17601 m!403263))

(declare-fun m!403265 () Bool)

(assert (=> b!413887 m!403265))

(declare-fun m!403267 () Bool)

(assert (=> b!413899 m!403267))

(declare-fun m!403269 () Bool)

(assert (=> b!413899 m!403269))

(declare-fun m!403271 () Bool)

(assert (=> bm!28676 m!403271))

(check-sat tp_is_empty!10653 (not b!413887) (not bm!28675) b_and!16905 (not bm!28676) (not b!413892) (not mapNonEmpty!17601) (not b!413890) (not b!413893) (not start!39242) (not b!413898) (not b_next!9501) (not b!413896) (not b!413895) (not b!413888) (not b!413897) (not b!413899))
(check-sat b_and!16905 (not b_next!9501))
