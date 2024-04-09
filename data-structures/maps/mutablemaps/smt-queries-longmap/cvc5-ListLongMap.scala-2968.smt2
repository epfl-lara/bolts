; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42072 () Bool)

(assert start!42072)

(declare-fun b_free!11617 () Bool)

(declare-fun b_next!11617 () Bool)

(assert (=> start!42072 (= b_free!11617 (not b_next!11617))))

(declare-fun tp!40870 () Bool)

(declare-fun b_and!20045 () Bool)

(assert (=> start!42072 (= tp!40870 b_and!20045)))

(declare-fun b!469442 () Bool)

(declare-fun e!274922 () Bool)

(declare-fun tp_is_empty!13045 () Bool)

(assert (=> b!469442 (= e!274922 tp_is_empty!13045)))

(declare-fun b!469443 () Bool)

(declare-fun res!280604 () Bool)

(declare-fun e!274923 () Bool)

(assert (=> b!469443 (=> (not res!280604) (not e!274923))))

(declare-datatypes ((array!29825 0))(
  ( (array!29826 (arr!14334 (Array (_ BitVec 32) (_ BitVec 64))) (size!14686 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29825)

(declare-datatypes ((List!8737 0))(
  ( (Nil!8734) (Cons!8733 (h!9589 (_ BitVec 64)) (t!14705 List!8737)) )
))
(declare-fun arrayNoDuplicates!0 (array!29825 (_ BitVec 32) List!8737) Bool)

(assert (=> b!469443 (= res!280604 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8734))))

(declare-fun res!280603 () Bool)

(assert (=> start!42072 (=> (not res!280603) (not e!274923))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42072 (= res!280603 (validMask!0 mask!1365))))

(assert (=> start!42072 e!274923))

(assert (=> start!42072 tp_is_empty!13045))

(assert (=> start!42072 tp!40870))

(assert (=> start!42072 true))

(declare-fun array_inv!10338 (array!29825) Bool)

(assert (=> start!42072 (array_inv!10338 _keys!1025)))

(declare-datatypes ((V!18499 0))(
  ( (V!18500 (val!6567 Int)) )
))
(declare-datatypes ((ValueCell!6179 0))(
  ( (ValueCellFull!6179 (v!8853 V!18499)) (EmptyCell!6179) )
))
(declare-datatypes ((array!29827 0))(
  ( (array!29828 (arr!14335 (Array (_ BitVec 32) ValueCell!6179)) (size!14687 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29827)

(declare-fun e!274920 () Bool)

(declare-fun array_inv!10339 (array!29827) Bool)

(assert (=> start!42072 (and (array_inv!10339 _values!833) e!274920)))

(declare-fun b!469444 () Bool)

(declare-fun mapRes!21265 () Bool)

(assert (=> b!469444 (= e!274920 (and e!274922 mapRes!21265))))

(declare-fun condMapEmpty!21265 () Bool)

(declare-fun mapDefault!21265 () ValueCell!6179)

