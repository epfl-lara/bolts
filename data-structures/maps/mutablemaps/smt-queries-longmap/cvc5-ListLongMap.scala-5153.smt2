; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69906 () Bool)

(assert start!69906)

(declare-fun b!812343 () Bool)

(declare-fun e!449989 () Bool)

(declare-fun tp_is_empty!14035 () Bool)

(assert (=> b!812343 (= e!449989 tp_is_empty!14035)))

(declare-fun mapIsEmpty!22627 () Bool)

(declare-fun mapRes!22627 () Bool)

(assert (=> mapIsEmpty!22627 mapRes!22627))

(declare-fun res!555221 () Bool)

(declare-fun e!449990 () Bool)

(assert (=> start!69906 (=> (not res!555221) (not e!449990))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69906 (= res!555221 (validMask!0 mask!1312))))

(assert (=> start!69906 e!449990))

(declare-datatypes ((array!44268 0))(
  ( (array!44269 (arr!21192 (Array (_ BitVec 32) (_ BitVec 64))) (size!21613 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44268)

(declare-fun array_inv!16953 (array!44268) Bool)

(assert (=> start!69906 (array_inv!16953 _keys!976)))

(assert (=> start!69906 true))

(declare-datatypes ((V!23715 0))(
  ( (V!23716 (val!7065 Int)) )
))
(declare-datatypes ((ValueCell!6602 0))(
  ( (ValueCellFull!6602 (v!9488 V!23715)) (EmptyCell!6602) )
))
(declare-datatypes ((array!44270 0))(
  ( (array!44271 (arr!21193 (Array (_ BitVec 32) ValueCell!6602)) (size!21614 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44270)

(declare-fun e!449988 () Bool)

(declare-fun array_inv!16954 (array!44270) Bool)

(assert (=> start!69906 (and (array_inv!16954 _values!788) e!449988)))

(declare-fun mapNonEmpty!22627 () Bool)

(declare-fun tp!43735 () Bool)

(assert (=> mapNonEmpty!22627 (= mapRes!22627 (and tp!43735 e!449989))))

(declare-fun mapKey!22627 () (_ BitVec 32))

(declare-fun mapValue!22627 () ValueCell!6602)

(declare-fun mapRest!22627 () (Array (_ BitVec 32) ValueCell!6602))

(assert (=> mapNonEmpty!22627 (= (arr!21193 _values!788) (store mapRest!22627 mapKey!22627 mapValue!22627))))

(declare-fun b!812344 () Bool)

(declare-fun res!555219 () Bool)

(assert (=> b!812344 (=> (not res!555219) (not e!449990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44268 (_ BitVec 32)) Bool)

(assert (=> b!812344 (= res!555219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812345 () Bool)

(assert (=> b!812345 (= e!449990 false)))

(declare-fun lt!364094 () Bool)

(declare-datatypes ((List!15135 0))(
  ( (Nil!15132) (Cons!15131 (h!16260 (_ BitVec 64)) (t!21458 List!15135)) )
))
(declare-fun arrayNoDuplicates!0 (array!44268 (_ BitVec 32) List!15135) Bool)

(assert (=> b!812345 (= lt!364094 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15132))))

(declare-fun b!812346 () Bool)

(declare-fun e!449986 () Bool)

(assert (=> b!812346 (= e!449988 (and e!449986 mapRes!22627))))

(declare-fun condMapEmpty!22627 () Bool)

(declare-fun mapDefault!22627 () ValueCell!6602)

