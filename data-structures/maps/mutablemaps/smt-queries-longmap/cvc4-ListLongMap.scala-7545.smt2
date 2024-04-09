; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95630 () Bool)

(assert start!95630)

(declare-fun b!1079911 () Bool)

(declare-fun res!719792 () Bool)

(declare-fun e!617414 () Bool)

(assert (=> b!1079911 (=> (not res!719792) (not e!617414))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079911 (= res!719792 (validKeyInArray!0 k!904))))

(declare-fun b!1079912 () Bool)

(declare-fun res!719794 () Bool)

(declare-fun e!617419 () Bool)

(assert (=> b!1079912 (=> (not res!719794) (not e!617419))))

(declare-datatypes ((array!69404 0))(
  ( (array!69405 (arr!33372 (Array (_ BitVec 32) (_ BitVec 64))) (size!33909 (_ BitVec 32))) )
))
(declare-fun lt!478877 () array!69404)

(declare-datatypes ((List!23386 0))(
  ( (Nil!23383) (Cons!23382 (h!24591 (_ BitVec 64)) (t!32752 List!23386)) )
))
(declare-fun arrayNoDuplicates!0 (array!69404 (_ BitVec 32) List!23386) Bool)

(assert (=> b!1079912 (= res!719794 (arrayNoDuplicates!0 lt!478877 #b00000000000000000000000000000000 Nil!23383))))

(declare-fun b!1079913 () Bool)

(declare-fun res!719796 () Bool)

(assert (=> b!1079913 (=> (not res!719796) (not e!617414))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69404)

(declare-datatypes ((V!40125 0))(
  ( (V!40126 (val!13181 Int)) )
))
(declare-datatypes ((ValueCell!12415 0))(
  ( (ValueCellFull!12415 (v!15803 V!40125)) (EmptyCell!12415) )
))
(declare-datatypes ((array!69406 0))(
  ( (array!69407 (arr!33373 (Array (_ BitVec 32) ValueCell!12415)) (size!33910 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69406)

(assert (=> b!1079913 (= res!719796 (and (= (size!33910 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33909 _keys!1070) (size!33910 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079914 () Bool)

(declare-fun e!617416 () Bool)

(declare-fun e!617418 () Bool)

(declare-fun mapRes!41128 () Bool)

(assert (=> b!1079914 (= e!617416 (and e!617418 mapRes!41128))))

(declare-fun condMapEmpty!41128 () Bool)

(declare-fun mapDefault!41128 () ValueCell!12415)

