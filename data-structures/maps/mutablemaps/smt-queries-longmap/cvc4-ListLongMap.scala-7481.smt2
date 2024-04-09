; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94874 () Bool)

(assert start!94874)

(declare-fun b_free!22067 () Bool)

(declare-fun b_next!22067 () Bool)

(assert (=> start!94874 (= b_free!22067 (not b_next!22067))))

(declare-fun tp!77664 () Bool)

(declare-fun b_and!34927 () Bool)

(assert (=> start!94874 (= tp!77664 b_and!34927)))

(declare-fun b!1072351 () Bool)

(declare-fun res!715403 () Bool)

(declare-fun e!612533 () Bool)

(assert (=> b!1072351 (=> (not res!715403) (not e!612533))))

(declare-datatypes ((array!68682 0))(
  ( (array!68683 (arr!33032 (Array (_ BitVec 32) (_ BitVec 64))) (size!33569 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68682)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68682 (_ BitVec 32)) Bool)

(assert (=> b!1072351 (= res!715403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072352 () Bool)

(declare-fun res!715402 () Bool)

(assert (=> b!1072352 (=> (not res!715402) (not e!612533))))

(declare-datatypes ((List!23184 0))(
  ( (Nil!23181) (Cons!23180 (h!24389 (_ BitVec 64)) (t!32526 List!23184)) )
))
(declare-fun arrayNoDuplicates!0 (array!68682 (_ BitVec 32) List!23184) Bool)

(assert (=> b!1072352 (= res!715402 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23181))))

(declare-fun b!1072353 () Bool)

(declare-fun e!612531 () Bool)

(declare-fun e!612532 () Bool)

(declare-fun mapRes!40525 () Bool)

(assert (=> b!1072353 (= e!612531 (and e!612532 mapRes!40525))))

(declare-fun condMapEmpty!40525 () Bool)

(declare-datatypes ((V!39637 0))(
  ( (V!39638 (val!12989 Int)) )
))
(declare-datatypes ((ValueCell!12235 0))(
  ( (ValueCellFull!12235 (v!15607 V!39637)) (EmptyCell!12235) )
))
(declare-datatypes ((array!68684 0))(
  ( (array!68685 (arr!33033 (Array (_ BitVec 32) ValueCell!12235)) (size!33570 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68684)

(declare-fun mapDefault!40525 () ValueCell!12235)

