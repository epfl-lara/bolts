; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104834 () Bool)

(assert start!104834)

(declare-fun b_free!26603 () Bool)

(declare-fun b_next!26603 () Bool)

(assert (=> start!104834 (= b_free!26603 (not b_next!26603))))

(declare-fun tp!93299 () Bool)

(declare-fun b_and!44381 () Bool)

(assert (=> start!104834 (= tp!93299 b_and!44381)))

(declare-fun b!1249123 () Bool)

(declare-fun res!833364 () Bool)

(declare-fun e!708955 () Bool)

(assert (=> b!1249123 (=> (not res!833364) (not e!708955))))

(declare-datatypes ((array!80671 0))(
  ( (array!80672 (arr!38898 (Array (_ BitVec 32) (_ BitVec 64))) (size!39435 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80671)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80671 (_ BitVec 32)) Bool)

(assert (=> b!1249123 (= res!833364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249124 () Bool)

(declare-fun e!708956 () Bool)

(declare-fun e!708954 () Bool)

(declare-fun mapRes!49018 () Bool)

(assert (=> b!1249124 (= e!708956 (and e!708954 mapRes!49018))))

(declare-fun condMapEmpty!49018 () Bool)

(declare-datatypes ((V!47371 0))(
  ( (V!47372 (val!15815 Int)) )
))
(declare-datatypes ((ValueCell!14989 0))(
  ( (ValueCellFull!14989 (v!18511 V!47371)) (EmptyCell!14989) )
))
(declare-datatypes ((array!80673 0))(
  ( (array!80674 (arr!38899 (Array (_ BitVec 32) ValueCell!14989)) (size!39436 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80673)

(declare-fun mapDefault!49018 () ValueCell!14989)

