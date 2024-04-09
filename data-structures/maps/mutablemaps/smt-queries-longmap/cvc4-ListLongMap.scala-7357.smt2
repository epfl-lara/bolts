; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93886 () Bool)

(assert start!93886)

(declare-fun b_free!21323 () Bool)

(declare-fun b_next!21323 () Bool)

(assert (=> start!93886 (= b_free!21323 (not b_next!21323))))

(declare-fun tp!75392 () Bool)

(declare-fun b_and!34055 () Bool)

(assert (=> start!93886 (= tp!75392 b_and!34055)))

(declare-fun b!1061403 () Bool)

(declare-fun res!708890 () Bool)

(declare-fun e!604472 () Bool)

(assert (=> b!1061403 (=> (not res!708890) (not e!604472))))

(declare-datatypes ((array!67250 0))(
  ( (array!67251 (arr!32329 (Array (_ BitVec 32) (_ BitVec 64))) (size!32866 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67250)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67250 (_ BitVec 32)) Bool)

(assert (=> b!1061403 (= res!708890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061404 () Bool)

(declare-fun res!708891 () Bool)

(assert (=> b!1061404 (=> (not res!708891) (not e!604472))))

(declare-datatypes ((List!22655 0))(
  ( (Nil!22652) (Cons!22651 (h!23860 (_ BitVec 64)) (t!31971 List!22655)) )
))
(declare-fun arrayNoDuplicates!0 (array!67250 (_ BitVec 32) List!22655) Bool)

(assert (=> b!1061404 (= res!708891 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22652))))

(declare-fun b!1061405 () Bool)

(declare-fun e!604471 () Bool)

(declare-fun e!604468 () Bool)

(declare-fun mapRes!39370 () Bool)

(assert (=> b!1061405 (= e!604471 (and e!604468 mapRes!39370))))

(declare-fun condMapEmpty!39370 () Bool)

(declare-datatypes ((V!38645 0))(
  ( (V!38646 (val!12617 Int)) )
))
(declare-datatypes ((ValueCell!11863 0))(
  ( (ValueCellFull!11863 (v!15228 V!38645)) (EmptyCell!11863) )
))
(declare-datatypes ((array!67252 0))(
  ( (array!67253 (arr!32330 (Array (_ BitVec 32) ValueCell!11863)) (size!32867 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67252)

(declare-fun mapDefault!39370 () ValueCell!11863)

