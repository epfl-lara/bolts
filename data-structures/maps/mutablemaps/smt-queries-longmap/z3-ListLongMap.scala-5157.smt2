; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69932 () Bool)

(assert start!69932)

(declare-fun mapIsEmpty!22666 () Bool)

(declare-fun mapRes!22666 () Bool)

(assert (=> mapIsEmpty!22666 mapRes!22666))

(declare-fun mapNonEmpty!22666 () Bool)

(declare-fun tp!43774 () Bool)

(declare-fun e!450182 () Bool)

(assert (=> mapNonEmpty!22666 (= mapRes!22666 (and tp!43774 e!450182))))

(declare-datatypes ((V!23749 0))(
  ( (V!23750 (val!7078 Int)) )
))
(declare-datatypes ((ValueCell!6615 0))(
  ( (ValueCellFull!6615 (v!9501 V!23749)) (EmptyCell!6615) )
))
(declare-fun mapRest!22666 () (Array (_ BitVec 32) ValueCell!6615))

(declare-fun mapValue!22666 () ValueCell!6615)

(declare-fun mapKey!22666 () (_ BitVec 32))

(declare-datatypes ((array!44312 0))(
  ( (array!44313 (arr!21214 (Array (_ BitVec 32) ValueCell!6615)) (size!21635 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44312)

(assert (=> mapNonEmpty!22666 (= (arr!21214 _values!788) (store mapRest!22666 mapKey!22666 mapValue!22666))))

(declare-fun b!812577 () Bool)

(declare-fun res!555337 () Bool)

(declare-fun e!450185 () Bool)

(assert (=> b!812577 (=> (not res!555337) (not e!450185))))

(declare-datatypes ((array!44314 0))(
  ( (array!44315 (arr!21215 (Array (_ BitVec 32) (_ BitVec 64))) (size!21636 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44314)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44314 (_ BitVec 32)) Bool)

(assert (=> b!812577 (= res!555337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812578 () Bool)

(assert (=> b!812578 (= e!450185 false)))

(declare-fun lt!364133 () Bool)

(declare-datatypes ((List!15144 0))(
  ( (Nil!15141) (Cons!15140 (h!16269 (_ BitVec 64)) (t!21467 List!15144)) )
))
(declare-fun arrayNoDuplicates!0 (array!44314 (_ BitVec 32) List!15144) Bool)

(assert (=> b!812578 (= lt!364133 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15141))))

(declare-fun res!555338 () Bool)

(assert (=> start!69932 (=> (not res!555338) (not e!450185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69932 (= res!555338 (validMask!0 mask!1312))))

(assert (=> start!69932 e!450185))

(declare-fun array_inv!16969 (array!44314) Bool)

(assert (=> start!69932 (array_inv!16969 _keys!976)))

(assert (=> start!69932 true))

(declare-fun e!450183 () Bool)

(declare-fun array_inv!16970 (array!44312) Bool)

(assert (=> start!69932 (and (array_inv!16970 _values!788) e!450183)))

(declare-fun b!812579 () Bool)

(declare-fun e!450184 () Bool)

(declare-fun tp_is_empty!14061 () Bool)

(assert (=> b!812579 (= e!450184 tp_is_empty!14061)))

(declare-fun b!812580 () Bool)

(assert (=> b!812580 (= e!450183 (and e!450184 mapRes!22666))))

(declare-fun condMapEmpty!22666 () Bool)

(declare-fun mapDefault!22666 () ValueCell!6615)

(assert (=> b!812580 (= condMapEmpty!22666 (= (arr!21214 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6615)) mapDefault!22666)))))

(declare-fun b!812581 () Bool)

(declare-fun res!555336 () Bool)

(assert (=> b!812581 (=> (not res!555336) (not e!450185))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812581 (= res!555336 (and (= (size!21635 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21636 _keys!976) (size!21635 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812582 () Bool)

(assert (=> b!812582 (= e!450182 tp_is_empty!14061)))

(assert (= (and start!69932 res!555338) b!812581))

(assert (= (and b!812581 res!555336) b!812577))

(assert (= (and b!812577 res!555337) b!812578))

(assert (= (and b!812580 condMapEmpty!22666) mapIsEmpty!22666))

(assert (= (and b!812580 (not condMapEmpty!22666)) mapNonEmpty!22666))

(get-info :version)

(assert (= (and mapNonEmpty!22666 ((_ is ValueCellFull!6615) mapValue!22666)) b!812582))

(assert (= (and b!812580 ((_ is ValueCellFull!6615) mapDefault!22666)) b!812579))

(assert (= start!69932 b!812580))

(declare-fun m!754959 () Bool)

(assert (=> mapNonEmpty!22666 m!754959))

(declare-fun m!754961 () Bool)

(assert (=> b!812577 m!754961))

(declare-fun m!754963 () Bool)

(assert (=> b!812578 m!754963))

(declare-fun m!754965 () Bool)

(assert (=> start!69932 m!754965))

(declare-fun m!754967 () Bool)

(assert (=> start!69932 m!754967))

(declare-fun m!754969 () Bool)

(assert (=> start!69932 m!754969))

(check-sat (not mapNonEmpty!22666) tp_is_empty!14061 (not b!812577) (not b!812578) (not start!69932))
(check-sat)
