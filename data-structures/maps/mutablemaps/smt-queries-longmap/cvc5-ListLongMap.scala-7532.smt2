; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95532 () Bool)

(assert start!95532)

(declare-fun b!1078401 () Bool)

(declare-fun res!718675 () Bool)

(declare-fun e!616640 () Bool)

(assert (=> b!1078401 (=> (not res!718675) (not e!616640))))

(declare-datatypes ((array!69248 0))(
  ( (array!69249 (arr!33295 (Array (_ BitVec 32) (_ BitVec 64))) (size!33832 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69248)

(declare-datatypes ((List!23353 0))(
  ( (Nil!23350) (Cons!23349 (h!24558 (_ BitVec 64)) (t!32719 List!23353)) )
))
(declare-fun arrayNoDuplicates!0 (array!69248 (_ BitVec 32) List!23353) Bool)

(assert (=> b!1078401 (= res!718675 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23350))))

(declare-fun b!1078402 () Bool)

(declare-fun e!616639 () Bool)

(assert (=> b!1078402 (= e!616639 false)))

(declare-fun lt!478616 () Bool)

(declare-fun lt!478615 () array!69248)

(assert (=> b!1078402 (= lt!478616 (arrayNoDuplicates!0 lt!478615 #b00000000000000000000000000000000 Nil!23350))))

(declare-fun b!1078403 () Bool)

(declare-fun res!718674 () Bool)

(assert (=> b!1078403 (=> (not res!718674) (not e!616640))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69248 (_ BitVec 32)) Bool)

(assert (=> b!1078403 (= res!718674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078404 () Bool)

(declare-fun e!616637 () Bool)

(declare-fun e!616638 () Bool)

(declare-fun mapRes!41002 () Bool)

(assert (=> b!1078404 (= e!616637 (and e!616638 mapRes!41002))))

(declare-fun condMapEmpty!41002 () Bool)

(declare-datatypes ((V!40017 0))(
  ( (V!40018 (val!13140 Int)) )
))
(declare-datatypes ((ValueCell!12374 0))(
  ( (ValueCellFull!12374 (v!15762 V!40017)) (EmptyCell!12374) )
))
(declare-datatypes ((array!69250 0))(
  ( (array!69251 (arr!33296 (Array (_ BitVec 32) ValueCell!12374)) (size!33833 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69250)

(declare-fun mapDefault!41002 () ValueCell!12374)

