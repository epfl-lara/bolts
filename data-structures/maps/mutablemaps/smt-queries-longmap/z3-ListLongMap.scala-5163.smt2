; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69978 () Bool)

(assert start!69978)

(declare-fun b_free!12387 () Bool)

(declare-fun b_next!12387 () Bool)

(assert (=> start!69978 (= b_free!12387 (not b_next!12387))))

(declare-fun tp!43873 () Bool)

(declare-fun b_and!21173 () Bool)

(assert (=> start!69978 (= tp!43873 b_and!21173)))

(declare-fun res!555563 () Bool)

(declare-fun e!450479 () Bool)

(assert (=> start!69978 (=> (not res!555563) (not e!450479))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69978 (= res!555563 (validMask!0 mask!1312))))

(assert (=> start!69978 e!450479))

(declare-fun tp_is_empty!14097 () Bool)

(assert (=> start!69978 tp_is_empty!14097))

(declare-datatypes ((array!44384 0))(
  ( (array!44385 (arr!21249 (Array (_ BitVec 32) (_ BitVec 64))) (size!21670 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44384)

(declare-fun array_inv!16993 (array!44384) Bool)

(assert (=> start!69978 (array_inv!16993 _keys!976)))

(assert (=> start!69978 true))

(declare-datatypes ((V!23797 0))(
  ( (V!23798 (val!7096 Int)) )
))
(declare-datatypes ((ValueCell!6633 0))(
  ( (ValueCellFull!6633 (v!9519 V!23797)) (EmptyCell!6633) )
))
(declare-datatypes ((array!44386 0))(
  ( (array!44387 (arr!21250 (Array (_ BitVec 32) ValueCell!6633)) (size!21671 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44386)

(declare-fun e!450481 () Bool)

(declare-fun array_inv!16994 (array!44386) Bool)

(assert (=> start!69978 (and (array_inv!16994 _values!788) e!450481)))

(assert (=> start!69978 tp!43873))

(declare-fun b!812986 () Bool)

(assert (=> b!812986 (= e!450479 false)))

(declare-datatypes ((tuple2!9296 0))(
  ( (tuple2!9297 (_1!4658 (_ BitVec 64)) (_2!4658 V!23797)) )
))
(declare-datatypes ((List!15168 0))(
  ( (Nil!15165) (Cons!15164 (h!16293 tuple2!9296) (t!21491 List!15168)) )
))
(declare-datatypes ((ListLongMap!8133 0))(
  ( (ListLongMap!8134 (toList!4082 List!15168)) )
))
(declare-fun lt!364187 () ListLongMap!8133)

(declare-fun zeroValueBefore!34 () V!23797)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!23797)

(declare-fun getCurrentListMapNoExtraKeys!2131 (array!44384 array!44386 (_ BitVec 32) (_ BitVec 32) V!23797 V!23797 (_ BitVec 32) Int) ListLongMap!8133)

(assert (=> b!812986 (= lt!364187 (getCurrentListMapNoExtraKeys!2131 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812987 () Bool)

(declare-fun res!555566 () Bool)

(assert (=> b!812987 (=> (not res!555566) (not e!450479))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812987 (= res!555566 (and (= (size!21671 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21670 _keys!976) (size!21671 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812988 () Bool)

(declare-fun res!555564 () Bool)

(assert (=> b!812988 (=> (not res!555564) (not e!450479))))

(declare-datatypes ((List!15169 0))(
  ( (Nil!15166) (Cons!15165 (h!16294 (_ BitVec 64)) (t!21492 List!15169)) )
))
(declare-fun arrayNoDuplicates!0 (array!44384 (_ BitVec 32) List!15169) Bool)

(assert (=> b!812988 (= res!555564 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15166))))

(declare-fun b!812989 () Bool)

(declare-fun e!450478 () Bool)

(assert (=> b!812989 (= e!450478 tp_is_empty!14097)))

(declare-fun mapNonEmpty!22723 () Bool)

(declare-fun mapRes!22723 () Bool)

(declare-fun tp!43872 () Bool)

(declare-fun e!450480 () Bool)

(assert (=> mapNonEmpty!22723 (= mapRes!22723 (and tp!43872 e!450480))))

(declare-fun mapValue!22723 () ValueCell!6633)

(declare-fun mapRest!22723 () (Array (_ BitVec 32) ValueCell!6633))

(declare-fun mapKey!22723 () (_ BitVec 32))

(assert (=> mapNonEmpty!22723 (= (arr!21250 _values!788) (store mapRest!22723 mapKey!22723 mapValue!22723))))

(declare-fun mapIsEmpty!22723 () Bool)

(assert (=> mapIsEmpty!22723 mapRes!22723))

(declare-fun b!812990 () Bool)

(assert (=> b!812990 (= e!450481 (and e!450478 mapRes!22723))))

(declare-fun condMapEmpty!22723 () Bool)

(declare-fun mapDefault!22723 () ValueCell!6633)

(assert (=> b!812990 (= condMapEmpty!22723 (= (arr!21250 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6633)) mapDefault!22723)))))

(declare-fun b!812991 () Bool)

(assert (=> b!812991 (= e!450480 tp_is_empty!14097)))

(declare-fun b!812992 () Bool)

(declare-fun res!555565 () Bool)

(assert (=> b!812992 (=> (not res!555565) (not e!450479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44384 (_ BitVec 32)) Bool)

(assert (=> b!812992 (= res!555565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!69978 res!555563) b!812987))

(assert (= (and b!812987 res!555566) b!812992))

(assert (= (and b!812992 res!555565) b!812988))

(assert (= (and b!812988 res!555564) b!812986))

(assert (= (and b!812990 condMapEmpty!22723) mapIsEmpty!22723))

(assert (= (and b!812990 (not condMapEmpty!22723)) mapNonEmpty!22723))

(get-info :version)

(assert (= (and mapNonEmpty!22723 ((_ is ValueCellFull!6633) mapValue!22723)) b!812991))

(assert (= (and b!812990 ((_ is ValueCellFull!6633) mapDefault!22723)) b!812989))

(assert (= start!69978 b!812990))

(declare-fun m!755219 () Bool)

(assert (=> mapNonEmpty!22723 m!755219))

(declare-fun m!755221 () Bool)

(assert (=> b!812988 m!755221))

(declare-fun m!755223 () Bool)

(assert (=> b!812986 m!755223))

(declare-fun m!755225 () Bool)

(assert (=> b!812992 m!755225))

(declare-fun m!755227 () Bool)

(assert (=> start!69978 m!755227))

(declare-fun m!755229 () Bool)

(assert (=> start!69978 m!755229))

(declare-fun m!755231 () Bool)

(assert (=> start!69978 m!755231))

(check-sat (not mapNonEmpty!22723) (not b!812992) (not b!812988) tp_is_empty!14097 (not b_next!12387) b_and!21173 (not b!812986) (not start!69978))
(check-sat b_and!21173 (not b_next!12387))
