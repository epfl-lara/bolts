; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70194 () Bool)

(assert start!70194)

(declare-fun b_free!12577 () Bool)

(declare-fun b_next!12577 () Bool)

(assert (=> start!70194 (= b_free!12577 (not b_next!12577))))

(declare-fun tp!44448 () Bool)

(declare-fun b_and!21375 () Bool)

(assert (=> start!70194 (= tp!44448 b_and!21375)))

(declare-fun res!556763 () Bool)

(declare-fun e!452009 () Bool)

(assert (=> start!70194 (=> (not res!556763) (not e!452009))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70194 (= res!556763 (validMask!0 mask!1312))))

(assert (=> start!70194 e!452009))

(declare-fun tp_is_empty!14287 () Bool)

(assert (=> start!70194 tp_is_empty!14287))

(declare-datatypes ((array!44762 0))(
  ( (array!44763 (arr!21436 (Array (_ BitVec 32) (_ BitVec 64))) (size!21857 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44762)

(declare-fun array_inv!17131 (array!44762) Bool)

(assert (=> start!70194 (array_inv!17131 _keys!976)))

(assert (=> start!70194 true))

(declare-datatypes ((V!24051 0))(
  ( (V!24052 (val!7191 Int)) )
))
(declare-datatypes ((ValueCell!6728 0))(
  ( (ValueCellFull!6728 (v!9614 V!24051)) (EmptyCell!6728) )
))
(declare-datatypes ((array!44764 0))(
  ( (array!44765 (arr!21437 (Array (_ BitVec 32) ValueCell!6728)) (size!21858 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44764)

(declare-fun e!452007 () Bool)

(declare-fun array_inv!17132 (array!44764) Bool)

(assert (=> start!70194 (and (array_inv!17132 _values!788) e!452007)))

(assert (=> start!70194 tp!44448))

(declare-fun b!815139 () Bool)

(declare-fun res!556761 () Bool)

(assert (=> b!815139 (=> (not res!556761) (not e!452009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44762 (_ BitVec 32)) Bool)

(assert (=> b!815139 (= res!556761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815140 () Bool)

(declare-fun e!452010 () Bool)

(declare-fun mapRes!23014 () Bool)

(assert (=> b!815140 (= e!452007 (and e!452010 mapRes!23014))))

(declare-fun condMapEmpty!23014 () Bool)

(declare-fun mapDefault!23014 () ValueCell!6728)

