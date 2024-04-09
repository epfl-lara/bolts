; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94882 () Bool)

(assert start!94882)

(declare-fun b_free!22075 () Bool)

(declare-fun b_next!22075 () Bool)

(assert (=> start!94882 (= b_free!22075 (not b_next!22075))))

(declare-fun tp!77688 () Bool)

(declare-fun b_and!34935 () Bool)

(assert (=> start!94882 (= tp!77688 b_and!34935)))

(declare-fun b!1072459 () Bool)

(declare-fun res!715477 () Bool)

(declare-fun e!612616 () Bool)

(assert (=> b!1072459 (=> (not res!715477) (not e!612616))))

(declare-datatypes ((array!68698 0))(
  ( (array!68699 (arr!33040 (Array (_ BitVec 32) (_ BitVec 64))) (size!33577 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68698)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68698 (_ BitVec 32)) Bool)

(assert (=> b!1072459 (= res!715477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072460 () Bool)

(declare-fun e!612617 () Bool)

(declare-fun tp_is_empty!25885 () Bool)

(assert (=> b!1072460 (= e!612617 tp_is_empty!25885)))

(declare-fun b!1072461 () Bool)

(declare-fun res!715474 () Bool)

(assert (=> b!1072461 (=> (not res!715474) (not e!612616))))

(declare-datatypes ((List!23190 0))(
  ( (Nil!23187) (Cons!23186 (h!24395 (_ BitVec 64)) (t!32532 List!23190)) )
))
(declare-fun arrayNoDuplicates!0 (array!68698 (_ BitVec 32) List!23190) Bool)

(assert (=> b!1072461 (= res!715474 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23187))))

(declare-fun b!1072462 () Bool)

(declare-fun e!612619 () Bool)

(declare-fun e!612614 () Bool)

(declare-fun mapRes!40537 () Bool)

(assert (=> b!1072462 (= e!612619 (and e!612614 mapRes!40537))))

(declare-fun condMapEmpty!40537 () Bool)

(declare-datatypes ((V!39649 0))(
  ( (V!39650 (val!12993 Int)) )
))
(declare-datatypes ((ValueCell!12239 0))(
  ( (ValueCellFull!12239 (v!15611 V!39649)) (EmptyCell!12239) )
))
(declare-datatypes ((array!68700 0))(
  ( (array!68701 (arr!33041 (Array (_ BitVec 32) ValueCell!12239)) (size!33578 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68700)

(declare-fun mapDefault!40537 () ValueCell!12239)

