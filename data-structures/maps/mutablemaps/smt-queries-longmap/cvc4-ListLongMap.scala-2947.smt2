; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41914 () Bool)

(assert start!41914)

(declare-fun b_free!11495 () Bool)

(declare-fun b_next!11495 () Bool)

(assert (=> start!41914 (= b_free!11495 (not b_next!11495))))

(declare-fun tp!40497 () Bool)

(declare-fun b_and!19901 () Bool)

(assert (=> start!41914 (= tp!40497 b_and!19901)))

(declare-fun res!279554 () Bool)

(declare-fun e!273616 () Bool)

(assert (=> start!41914 (=> (not res!279554) (not e!273616))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41914 (= res!279554 (validMask!0 mask!1365))))

(assert (=> start!41914 e!273616))

(declare-fun tp_is_empty!12923 () Bool)

(assert (=> start!41914 tp_is_empty!12923))

(assert (=> start!41914 tp!40497))

(assert (=> start!41914 true))

(declare-datatypes ((array!29581 0))(
  ( (array!29582 (arr!14214 (Array (_ BitVec 32) (_ BitVec 64))) (size!14566 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29581)

(declare-fun array_inv!10252 (array!29581) Bool)

(assert (=> start!41914 (array_inv!10252 _keys!1025)))

(declare-datatypes ((V!18335 0))(
  ( (V!18336 (val!6506 Int)) )
))
(declare-datatypes ((ValueCell!6118 0))(
  ( (ValueCellFull!6118 (v!8791 V!18335)) (EmptyCell!6118) )
))
(declare-datatypes ((array!29583 0))(
  ( (array!29584 (arr!14215 (Array (_ BitVec 32) ValueCell!6118)) (size!14567 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29583)

(declare-fun e!273615 () Bool)

(declare-fun array_inv!10253 (array!29583) Bool)

(assert (=> start!41914 (and (array_inv!10253 _values!833) e!273615)))

(declare-fun b!467651 () Bool)

(declare-fun e!273619 () Bool)

(declare-fun mapRes!21076 () Bool)

(assert (=> b!467651 (= e!273615 (and e!273619 mapRes!21076))))

(declare-fun condMapEmpty!21076 () Bool)

(declare-fun mapDefault!21076 () ValueCell!6118)

