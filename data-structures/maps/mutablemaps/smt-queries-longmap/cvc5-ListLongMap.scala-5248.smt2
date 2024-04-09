; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70612 () Bool)

(assert start!70612)

(declare-fun b_free!12895 () Bool)

(declare-fun b_next!12895 () Bool)

(assert (=> start!70612 (= b_free!12895 (not b_next!12895))))

(declare-fun tp!45420 () Bool)

(declare-fun b_and!21755 () Bool)

(assert (=> start!70612 (= tp!45420 b_and!21755)))

(declare-fun b!819875 () Bool)

(declare-fun res!559565 () Bool)

(declare-fun e!455459 () Bool)

(assert (=> b!819875 (=> (not res!559565) (not e!455459))))

(declare-datatypes ((array!45374 0))(
  ( (array!45375 (arr!21736 (Array (_ BitVec 32) (_ BitVec 64))) (size!22157 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45374)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45374 (_ BitVec 32)) Bool)

(assert (=> b!819875 (= res!559565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23509 () Bool)

(declare-fun mapRes!23509 () Bool)

(assert (=> mapIsEmpty!23509 mapRes!23509))

(declare-fun b!819876 () Bool)

(declare-fun e!455462 () Bool)

(assert (=> b!819876 (= e!455462 true)))

(declare-datatypes ((V!24475 0))(
  ( (V!24476 (val!7350 Int)) )
))
(declare-datatypes ((tuple2!9690 0))(
  ( (tuple2!9691 (_1!4855 (_ BitVec 64)) (_2!4855 V!24475)) )
))
(declare-fun lt!368317 () tuple2!9690)

(declare-fun lt!368315 () tuple2!9690)

(declare-datatypes ((List!15547 0))(
  ( (Nil!15544) (Cons!15543 (h!16672 tuple2!9690) (t!21886 List!15547)) )
))
(declare-datatypes ((ListLongMap!8527 0))(
  ( (ListLongMap!8528 (toList!4279 List!15547)) )
))
(declare-fun lt!368316 () ListLongMap!8527)

(declare-fun lt!368312 () ListLongMap!8527)

(declare-fun +!1820 (ListLongMap!8527 tuple2!9690) ListLongMap!8527)

(assert (=> b!819876 (= lt!368316 (+!1820 (+!1820 lt!368312 lt!368317) lt!368315))))

(declare-fun lt!368319 () ListLongMap!8527)

(declare-fun lt!368313 () ListLongMap!8527)

(assert (=> b!819876 (= (+!1820 lt!368319 lt!368315) (+!1820 lt!368313 lt!368315))))

(declare-fun zeroValueBefore!34 () V!24475)

(declare-fun zeroValueAfter!34 () V!24475)

(declare-datatypes ((Unit!28009 0))(
  ( (Unit!28010) )
))
(declare-fun lt!368320 () Unit!28009)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!196 (ListLongMap!8527 (_ BitVec 64) V!24475 V!24475) Unit!28009)

(assert (=> b!819876 (= lt!368320 (addSameAsAddTwiceSameKeyDiffValues!196 lt!368319 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819876 (= lt!368315 (tuple2!9691 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455460 () Bool)

(assert (=> b!819876 e!455460))

(declare-fun res!559562 () Bool)

(assert (=> b!819876 (=> (not res!559562) (not e!455460))))

(declare-fun lt!368314 () ListLongMap!8527)

(assert (=> b!819876 (= res!559562 (= lt!368314 lt!368313))))

(assert (=> b!819876 (= lt!368313 (+!1820 lt!368319 lt!368317))))

(assert (=> b!819876 (= lt!368317 (tuple2!9691 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!24475)

(declare-datatypes ((ValueCell!6887 0))(
  ( (ValueCellFull!6887 (v!9776 V!24475)) (EmptyCell!6887) )
))
(declare-datatypes ((array!45376 0))(
  ( (array!45377 (arr!21737 (Array (_ BitVec 32) ValueCell!6887)) (size!22158 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45376)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lt!368321 () ListLongMap!8527)

(declare-fun getCurrentListMap!2431 (array!45374 array!45376 (_ BitVec 32) (_ BitVec 32) V!24475 V!24475 (_ BitVec 32) Int) ListLongMap!8527)

(assert (=> b!819876 (= lt!368321 (getCurrentListMap!2431 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819876 (= lt!368314 (getCurrentListMap!2431 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23509 () Bool)

(declare-fun tp!45421 () Bool)

(declare-fun e!455456 () Bool)

(assert (=> mapNonEmpty!23509 (= mapRes!23509 (and tp!45421 e!455456))))

(declare-fun mapKey!23509 () (_ BitVec 32))

(declare-fun mapValue!23509 () ValueCell!6887)

(declare-fun mapRest!23509 () (Array (_ BitVec 32) ValueCell!6887))

(assert (=> mapNonEmpty!23509 (= (arr!21737 _values!788) (store mapRest!23509 mapKey!23509 mapValue!23509))))

(declare-fun b!819878 () Bool)

(declare-fun res!559567 () Bool)

(assert (=> b!819878 (=> (not res!559567) (not e!455459))))

(declare-datatypes ((List!15548 0))(
  ( (Nil!15545) (Cons!15544 (h!16673 (_ BitVec 64)) (t!21887 List!15548)) )
))
(declare-fun arrayNoDuplicates!0 (array!45374 (_ BitVec 32) List!15548) Bool)

(assert (=> b!819878 (= res!559567 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15545))))

(declare-fun b!819879 () Bool)

(declare-fun tp_is_empty!14605 () Bool)

(assert (=> b!819879 (= e!455456 tp_is_empty!14605)))

(declare-fun b!819880 () Bool)

(declare-fun res!559564 () Bool)

(assert (=> b!819880 (=> (not res!559564) (not e!455459))))

(assert (=> b!819880 (= res!559564 (and (= (size!22158 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22157 _keys!976) (size!22158 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819881 () Bool)

(assert (=> b!819881 (= e!455460 (= lt!368321 (+!1820 lt!368312 (tuple2!9691 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819882 () Bool)

(declare-fun e!455457 () Bool)

(assert (=> b!819882 (= e!455457 tp_is_empty!14605)))

(declare-fun b!819883 () Bool)

(declare-fun e!455461 () Bool)

(assert (=> b!819883 (= e!455461 (and e!455457 mapRes!23509))))

(declare-fun condMapEmpty!23509 () Bool)

(declare-fun mapDefault!23509 () ValueCell!6887)

