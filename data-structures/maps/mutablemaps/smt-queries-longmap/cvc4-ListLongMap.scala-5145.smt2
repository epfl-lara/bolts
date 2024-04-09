; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69818 () Bool)

(assert start!69818)

(declare-fun res!554943 () Bool)

(declare-fun e!449565 () Bool)

(assert (=> start!69818 (=> (not res!554943) (not e!449565))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69818 (= res!554943 (validMask!0 mask!1312))))

(assert (=> start!69818 e!449565))

(declare-datatypes ((array!44174 0))(
  ( (array!44175 (arr!21150 (Array (_ BitVec 32) (_ BitVec 64))) (size!21571 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44174)

(declare-fun array_inv!16923 (array!44174) Bool)

(assert (=> start!69818 (array_inv!16923 _keys!976)))

(assert (=> start!69818 true))

(declare-datatypes ((V!23655 0))(
  ( (V!23656 (val!7043 Int)) )
))
(declare-datatypes ((ValueCell!6580 0))(
  ( (ValueCellFull!6580 (v!9465 V!23655)) (EmptyCell!6580) )
))
(declare-datatypes ((array!44176 0))(
  ( (array!44177 (arr!21151 (Array (_ BitVec 32) ValueCell!6580)) (size!21572 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44176)

(declare-fun e!449564 () Bool)

(declare-fun array_inv!16924 (array!44176) Bool)

(assert (=> start!69818 (and (array_inv!16924 _values!788) e!449564)))

(declare-fun mapNonEmpty!22546 () Bool)

(declare-fun mapRes!22546 () Bool)

(declare-fun tp!43654 () Bool)

(declare-fun e!449561 () Bool)

(assert (=> mapNonEmpty!22546 (= mapRes!22546 (and tp!43654 e!449561))))

(declare-fun mapValue!22546 () ValueCell!6580)

(declare-fun mapKey!22546 () (_ BitVec 32))

(declare-fun mapRest!22546 () (Array (_ BitVec 32) ValueCell!6580))

(assert (=> mapNonEmpty!22546 (= (arr!21151 _values!788) (store mapRest!22546 mapKey!22546 mapValue!22546))))

(declare-fun b!811805 () Bool)

(declare-fun e!449562 () Bool)

(assert (=> b!811805 (= e!449564 (and e!449562 mapRes!22546))))

(declare-fun condMapEmpty!22546 () Bool)

(declare-fun mapDefault!22546 () ValueCell!6580)

