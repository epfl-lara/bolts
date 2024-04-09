; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39302 () Bool)

(assert start!39302)

(declare-fun b_free!9561 () Bool)

(declare-fun b_next!9561 () Bool)

(assert (=> start!39302 (= b_free!9561 (not b_next!9561))))

(declare-fun tp!34212 () Bool)

(declare-fun b_and!17015 () Bool)

(assert (=> start!39302 (= tp!34212 b_and!17015)))

(declare-fun b!415642 () Bool)

(declare-fun e!248224 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25263 0))(
  ( (array!25264 (arr!12078 (Array (_ BitVec 32) (_ BitVec 64))) (size!12430 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25263)

(assert (=> b!415642 (= e!248224 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!12430 _keys!709))))))

(declare-fun lt!190316 () array!25263)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15389 0))(
  ( (V!15390 (val!5401 Int)) )
))
(declare-fun zeroValue!515 () V!15389)

(declare-datatypes ((tuple2!6964 0))(
  ( (tuple2!6965 (_1!3492 (_ BitVec 64)) (_2!3492 V!15389)) )
))
(declare-datatypes ((List!7019 0))(
  ( (Nil!7016) (Cons!7015 (h!7871 tuple2!6964) (t!12253 List!7019)) )
))
(declare-datatypes ((ListLongMap!5891 0))(
  ( (ListLongMap!5892 (toList!2961 List!7019)) )
))
(declare-fun lt!190318 () ListLongMap!5891)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5013 0))(
  ( (ValueCellFull!5013 (v!7644 V!15389)) (EmptyCell!5013) )
))
(declare-datatypes ((array!25265 0))(
  ( (array!25266 (arr!12079 (Array (_ BitVec 32) ValueCell!5013)) (size!12431 (_ BitVec 32))) )
))
(declare-fun lt!190317 () array!25265)

(declare-fun minValue!515 () V!15389)

(declare-fun +!1174 (ListLongMap!5891 tuple2!6964) ListLongMap!5891)

(declare-fun getCurrentListMapNoExtraKeys!1165 (array!25263 array!25265 (_ BitVec 32) (_ BitVec 32) V!15389 V!15389 (_ BitVec 32) Int) ListLongMap!5891)

(declare-fun get!5969 (ValueCell!5013 V!15389) V!15389)

(declare-fun dynLambda!662 (Int (_ BitVec 64)) V!15389)

(assert (=> b!415642 (= lt!190318 (+!1174 (getCurrentListMapNoExtraKeys!1165 lt!190316 lt!190317 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6965 (select (arr!12078 lt!190316) from!863) (get!5969 (select (arr!12079 lt!190317) from!863) (dynLambda!662 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!415643 () Bool)

(declare-fun res!241920 () Bool)

(declare-fun e!248218 () Bool)

(assert (=> b!415643 (=> (not res!241920) (not e!248218))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415643 (= res!241920 (or (= (select (arr!12078 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12078 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!415644 () Bool)

(declare-fun res!241921 () Bool)

(assert (=> b!415644 (=> (not res!241921) (not e!248218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415644 (= res!241921 (validMask!0 mask!1025))))

(declare-fun b!415645 () Bool)

(declare-fun res!241929 () Bool)

(assert (=> b!415645 (=> (not res!241929) (not e!248218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25263 (_ BitVec 32)) Bool)

(assert (=> b!415645 (= res!241929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!415646 () Bool)

(declare-fun res!241931 () Bool)

(declare-fun e!248223 () Bool)

(assert (=> b!415646 (=> (not res!241931) (not e!248223))))

(declare-datatypes ((List!7020 0))(
  ( (Nil!7017) (Cons!7016 (h!7872 (_ BitVec 64)) (t!12254 List!7020)) )
))
(declare-fun arrayNoDuplicates!0 (array!25263 (_ BitVec 32) List!7020) Bool)

(assert (=> b!415646 (= res!241931 (arrayNoDuplicates!0 lt!190316 #b00000000000000000000000000000000 Nil!7017))))

(declare-fun mapIsEmpty!17691 () Bool)

(declare-fun mapRes!17691 () Bool)

(assert (=> mapIsEmpty!17691 mapRes!17691))

(declare-fun b!415647 () Bool)

(declare-fun res!241923 () Bool)

(assert (=> b!415647 (=> (not res!241923) (not e!248223))))

(assert (=> b!415647 (= res!241923 (bvsle from!863 i!563))))

(declare-fun _values!549 () array!25265)

(declare-fun call!28858 () ListLongMap!5891)

(declare-fun bm!28855 () Bool)

(declare-fun c!54980 () Bool)

(assert (=> bm!28855 (= call!28858 (getCurrentListMapNoExtraKeys!1165 (ite c!54980 _keys!709 lt!190316) (ite c!54980 _values!549 lt!190317) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415649 () Bool)

(declare-fun e!248216 () Bool)

(assert (=> b!415649 (= e!248223 e!248216)))

(declare-fun res!241928 () Bool)

(assert (=> b!415649 (=> (not res!241928) (not e!248216))))

(assert (=> b!415649 (= res!241928 (= from!863 i!563))))

(assert (=> b!415649 (= lt!190318 (getCurrentListMapNoExtraKeys!1165 lt!190316 lt!190317 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15389)

(assert (=> b!415649 (= lt!190317 (array!25266 (store (arr!12079 _values!549) i!563 (ValueCellFull!5013 v!412)) (size!12431 _values!549)))))

(declare-fun lt!190320 () ListLongMap!5891)

(assert (=> b!415649 (= lt!190320 (getCurrentListMapNoExtraKeys!1165 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!415650 () Bool)

(declare-fun res!241930 () Bool)

(assert (=> b!415650 (=> (not res!241930) (not e!248218))))

(assert (=> b!415650 (= res!241930 (and (= (size!12431 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12430 _keys!709) (size!12431 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!415651 () Bool)

(declare-fun e!248220 () Bool)

(declare-fun call!28859 () ListLongMap!5891)

(assert (=> b!415651 (= e!248220 (= call!28858 call!28859))))

(declare-fun b!415652 () Bool)

(declare-fun e!248217 () Bool)

(declare-fun tp_is_empty!10713 () Bool)

(assert (=> b!415652 (= e!248217 tp_is_empty!10713)))

(declare-fun mapNonEmpty!17691 () Bool)

(declare-fun tp!34211 () Bool)

(declare-fun e!248222 () Bool)

(assert (=> mapNonEmpty!17691 (= mapRes!17691 (and tp!34211 e!248222))))

(declare-fun mapValue!17691 () ValueCell!5013)

(declare-fun mapKey!17691 () (_ BitVec 32))

(declare-fun mapRest!17691 () (Array (_ BitVec 32) ValueCell!5013))

(assert (=> mapNonEmpty!17691 (= (arr!12079 _values!549) (store mapRest!17691 mapKey!17691 mapValue!17691))))

(declare-fun b!415653 () Bool)

(assert (=> b!415653 (= e!248222 tp_is_empty!10713)))

(declare-fun b!415654 () Bool)

(declare-fun res!241925 () Bool)

(assert (=> b!415654 (=> (not res!241925) (not e!248218))))

(assert (=> b!415654 (= res!241925 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7017))))

(declare-fun b!415655 () Bool)

(declare-fun res!241932 () Bool)

(assert (=> b!415655 (=> (not res!241932) (not e!248218))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415655 (= res!241932 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!415648 () Bool)

(assert (=> b!415648 (= e!248218 e!248223)))

(declare-fun res!241924 () Bool)

(assert (=> b!415648 (=> (not res!241924) (not e!248223))))

(assert (=> b!415648 (= res!241924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190316 mask!1025))))

(assert (=> b!415648 (= lt!190316 (array!25264 (store (arr!12078 _keys!709) i!563 k0!794) (size!12430 _keys!709)))))

(declare-fun res!241927 () Bool)

(assert (=> start!39302 (=> (not res!241927) (not e!248218))))

(assert (=> start!39302 (= res!241927 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12430 _keys!709))))))

(assert (=> start!39302 e!248218))

(assert (=> start!39302 tp_is_empty!10713))

(assert (=> start!39302 tp!34212))

(assert (=> start!39302 true))

(declare-fun e!248219 () Bool)

(declare-fun array_inv!8810 (array!25265) Bool)

(assert (=> start!39302 (and (array_inv!8810 _values!549) e!248219)))

(declare-fun array_inv!8811 (array!25263) Bool)

(assert (=> start!39302 (array_inv!8811 _keys!709)))

(declare-fun b!415656 () Bool)

(assert (=> b!415656 (= e!248220 (= call!28859 (+!1174 call!28858 (tuple2!6965 k0!794 v!412))))))

(declare-fun b!415657 () Bool)

(declare-fun res!241926 () Bool)

(assert (=> b!415657 (=> (not res!241926) (not e!248218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415657 (= res!241926 (validKeyInArray!0 k0!794))))

(declare-fun b!415658 () Bool)

(assert (=> b!415658 (= e!248216 (not e!248224))))

(declare-fun res!241919 () Bool)

(assert (=> b!415658 (=> res!241919 e!248224)))

(assert (=> b!415658 (= res!241919 (validKeyInArray!0 (select (arr!12078 _keys!709) from!863)))))

(assert (=> b!415658 e!248220))

(assert (=> b!415658 (= c!54980 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12247 0))(
  ( (Unit!12248) )
))
(declare-fun lt!190319 () Unit!12247)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!386 (array!25263 array!25265 (_ BitVec 32) (_ BitVec 32) V!15389 V!15389 (_ BitVec 32) (_ BitVec 64) V!15389 (_ BitVec 32) Int) Unit!12247)

(assert (=> b!415658 (= lt!190319 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!386 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28856 () Bool)

(assert (=> bm!28856 (= call!28859 (getCurrentListMapNoExtraKeys!1165 (ite c!54980 lt!190316 _keys!709) (ite c!54980 lt!190317 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415659 () Bool)

(assert (=> b!415659 (= e!248219 (and e!248217 mapRes!17691))))

(declare-fun condMapEmpty!17691 () Bool)

(declare-fun mapDefault!17691 () ValueCell!5013)

(assert (=> b!415659 (= condMapEmpty!17691 (= (arr!12079 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5013)) mapDefault!17691)))))

(declare-fun b!415660 () Bool)

(declare-fun res!241922 () Bool)

(assert (=> b!415660 (=> (not res!241922) (not e!248218))))

(assert (=> b!415660 (= res!241922 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12430 _keys!709))))))

(assert (= (and start!39302 res!241927) b!415644))

(assert (= (and b!415644 res!241921) b!415650))

(assert (= (and b!415650 res!241930) b!415645))

(assert (= (and b!415645 res!241929) b!415654))

(assert (= (and b!415654 res!241925) b!415660))

(assert (= (and b!415660 res!241922) b!415657))

(assert (= (and b!415657 res!241926) b!415643))

(assert (= (and b!415643 res!241920) b!415655))

(assert (= (and b!415655 res!241932) b!415648))

(assert (= (and b!415648 res!241924) b!415646))

(assert (= (and b!415646 res!241931) b!415647))

(assert (= (and b!415647 res!241923) b!415649))

(assert (= (and b!415649 res!241928) b!415658))

(assert (= (and b!415658 c!54980) b!415656))

(assert (= (and b!415658 (not c!54980)) b!415651))

(assert (= (or b!415656 b!415651) bm!28856))

(assert (= (or b!415656 b!415651) bm!28855))

(assert (= (and b!415658 (not res!241919)) b!415642))

(assert (= (and b!415659 condMapEmpty!17691) mapIsEmpty!17691))

(assert (= (and b!415659 (not condMapEmpty!17691)) mapNonEmpty!17691))

(get-info :version)

(assert (= (and mapNonEmpty!17691 ((_ is ValueCellFull!5013) mapValue!17691)) b!415653))

(assert (= (and b!415659 ((_ is ValueCellFull!5013) mapDefault!17691)) b!415652))

(assert (= start!39302 b!415659))

(declare-fun b_lambda!8895 () Bool)

(assert (=> (not b_lambda!8895) (not b!415642)))

(declare-fun t!12252 () Bool)

(declare-fun tb!3191 () Bool)

(assert (=> (and start!39302 (= defaultEntry!557 defaultEntry!557) t!12252) tb!3191))

(declare-fun result!5901 () Bool)

(assert (=> tb!3191 (= result!5901 tp_is_empty!10713)))

(assert (=> b!415642 t!12252))

(declare-fun b_and!17017 () Bool)

(assert (= b_and!17015 (and (=> t!12252 result!5901) b_and!17017)))

(declare-fun m!404787 () Bool)

(assert (=> bm!28856 m!404787))

(declare-fun m!404789 () Bool)

(assert (=> b!415657 m!404789))

(declare-fun m!404791 () Bool)

(assert (=> b!415645 m!404791))

(declare-fun m!404793 () Bool)

(assert (=> b!415646 m!404793))

(declare-fun m!404795 () Bool)

(assert (=> b!415658 m!404795))

(assert (=> b!415658 m!404795))

(declare-fun m!404797 () Bool)

(assert (=> b!415658 m!404797))

(declare-fun m!404799 () Bool)

(assert (=> b!415658 m!404799))

(declare-fun m!404801 () Bool)

(assert (=> b!415656 m!404801))

(declare-fun m!404803 () Bool)

(assert (=> b!415655 m!404803))

(declare-fun m!404805 () Bool)

(assert (=> b!415648 m!404805))

(declare-fun m!404807 () Bool)

(assert (=> b!415648 m!404807))

(declare-fun m!404809 () Bool)

(assert (=> b!415649 m!404809))

(declare-fun m!404811 () Bool)

(assert (=> b!415649 m!404811))

(declare-fun m!404813 () Bool)

(assert (=> b!415649 m!404813))

(declare-fun m!404815 () Bool)

(assert (=> mapNonEmpty!17691 m!404815))

(declare-fun m!404817 () Bool)

(assert (=> bm!28855 m!404817))

(declare-fun m!404819 () Bool)

(assert (=> b!415654 m!404819))

(declare-fun m!404821 () Bool)

(assert (=> b!415643 m!404821))

(declare-fun m!404823 () Bool)

(assert (=> b!415642 m!404823))

(declare-fun m!404825 () Bool)

(assert (=> b!415642 m!404825))

(declare-fun m!404827 () Bool)

(assert (=> b!415642 m!404827))

(declare-fun m!404829 () Bool)

(assert (=> b!415642 m!404829))

(assert (=> b!415642 m!404827))

(declare-fun m!404831 () Bool)

(assert (=> b!415642 m!404831))

(assert (=> b!415642 m!404825))

(assert (=> b!415642 m!404823))

(declare-fun m!404833 () Bool)

(assert (=> b!415642 m!404833))

(declare-fun m!404835 () Bool)

(assert (=> b!415644 m!404835))

(declare-fun m!404837 () Bool)

(assert (=> start!39302 m!404837))

(declare-fun m!404839 () Bool)

(assert (=> start!39302 m!404839))

(check-sat (not b_next!9561) (not b!415644) (not b!415642) tp_is_empty!10713 (not b!415648) (not b_lambda!8895) (not b!415655) (not b!415656) (not mapNonEmpty!17691) (not b!415657) (not b!415658) (not b!415654) (not bm!28856) (not b!415649) (not bm!28855) (not b!415645) (not b!415646) (not start!39302) b_and!17017)
(check-sat b_and!17017 (not b_next!9561))
