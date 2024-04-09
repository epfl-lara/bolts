; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42146 () Bool)

(assert start!42146)

(declare-fun b_free!11671 () Bool)

(declare-fun b_next!11671 () Bool)

(assert (=> start!42146 (= b_free!11671 (not b_next!11671))))

(declare-fun tp!41034 () Bool)

(declare-fun b_and!20111 () Bool)

(assert (=> start!42146 (= tp!41034 b_and!20111)))

(declare-fun res!281049 () Bool)

(declare-fun e!275479 () Bool)

(assert (=> start!42146 (=> (not res!281049) (not e!275479))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42146 (= res!281049 (validMask!0 mask!1365))))

(assert (=> start!42146 e!275479))

(declare-fun tp_is_empty!13099 () Bool)

(assert (=> start!42146 tp_is_empty!13099))

(assert (=> start!42146 tp!41034))

(assert (=> start!42146 true))

(declare-datatypes ((array!29929 0))(
  ( (array!29930 (arr!14385 (Array (_ BitVec 32) (_ BitVec 64))) (size!14737 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29929)

(declare-fun array_inv!10378 (array!29929) Bool)

(assert (=> start!42146 (array_inv!10378 _keys!1025)))

(declare-datatypes ((V!18571 0))(
  ( (V!18572 (val!6594 Int)) )
))
(declare-datatypes ((ValueCell!6206 0))(
  ( (ValueCellFull!6206 (v!8881 V!18571)) (EmptyCell!6206) )
))
(declare-datatypes ((array!29931 0))(
  ( (array!29932 (arr!14386 (Array (_ BitVec 32) ValueCell!6206)) (size!14738 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29931)

(declare-fun e!275481 () Bool)

(declare-fun array_inv!10379 (array!29931) Bool)

(assert (=> start!42146 (and (array_inv!10379 _values!833) e!275481)))

(declare-fun b!470231 () Bool)

(declare-fun e!275480 () Bool)

(declare-fun mapRes!21349 () Bool)

(assert (=> b!470231 (= e!275481 (and e!275480 mapRes!21349))))

(declare-fun condMapEmpty!21349 () Bool)

(declare-fun mapDefault!21349 () ValueCell!6206)

