; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69840 () Bool)

(assert start!69840)

(declare-fun b!811903 () Bool)

(declare-fun res!554983 () Bool)

(declare-fun e!449644 () Bool)

(assert (=> b!811903 (=> (not res!554983) (not e!449644))))

(declare-datatypes ((array!44194 0))(
  ( (array!44195 (arr!21158 (Array (_ BitVec 32) (_ BitVec 64))) (size!21579 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44194)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44194 (_ BitVec 32)) Bool)

(assert (=> b!811903 (= res!554983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22564 () Bool)

(declare-fun mapRes!22564 () Bool)

(assert (=> mapIsEmpty!22564 mapRes!22564))

(declare-fun res!554984 () Bool)

(assert (=> start!69840 (=> (not res!554984) (not e!449644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69840 (= res!554984 (validMask!0 mask!1312))))

(assert (=> start!69840 e!449644))

(declare-fun array_inv!16929 (array!44194) Bool)

(assert (=> start!69840 (array_inv!16929 _keys!976)))

(assert (=> start!69840 true))

(declare-datatypes ((V!23667 0))(
  ( (V!23668 (val!7047 Int)) )
))
(declare-datatypes ((ValueCell!6584 0))(
  ( (ValueCellFull!6584 (v!9469 V!23667)) (EmptyCell!6584) )
))
(declare-datatypes ((array!44196 0))(
  ( (array!44197 (arr!21159 (Array (_ BitVec 32) ValueCell!6584)) (size!21580 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44196)

(declare-fun e!449643 () Bool)

(declare-fun array_inv!16930 (array!44196) Bool)

(assert (=> start!69840 (and (array_inv!16930 _values!788) e!449643)))

(declare-fun b!811904 () Bool)

(declare-fun e!449645 () Bool)

(declare-fun tp_is_empty!13999 () Bool)

(assert (=> b!811904 (= e!449645 tp_is_empty!13999)))

(declare-fun mapNonEmpty!22564 () Bool)

(declare-fun tp!43672 () Bool)

(assert (=> mapNonEmpty!22564 (= mapRes!22564 (and tp!43672 e!449645))))

(declare-fun mapKey!22564 () (_ BitVec 32))

(declare-fun mapRest!22564 () (Array (_ BitVec 32) ValueCell!6584))

(declare-fun mapValue!22564 () ValueCell!6584)

(assert (=> mapNonEmpty!22564 (= (arr!21159 _values!788) (store mapRest!22564 mapKey!22564 mapValue!22564))))

(declare-fun b!811905 () Bool)

(declare-fun e!449646 () Bool)

(assert (=> b!811905 (= e!449643 (and e!449646 mapRes!22564))))

(declare-fun condMapEmpty!22564 () Bool)

(declare-fun mapDefault!22564 () ValueCell!6584)

