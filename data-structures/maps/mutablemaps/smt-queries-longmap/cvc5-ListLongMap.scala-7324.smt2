; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93650 () Bool)

(assert start!93650)

(declare-fun res!707677 () Bool)

(declare-fun e!602844 () Bool)

(assert (=> start!93650 (=> (not res!707677) (not e!602844))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93650 (= res!707677 (validMask!0 mask!1515))))

(assert (=> start!93650 e!602844))

(assert (=> start!93650 true))

(declare-datatypes ((V!38377 0))(
  ( (V!38378 (val!12516 Int)) )
))
(declare-datatypes ((ValueCell!11762 0))(
  ( (ValueCellFull!11762 (v!15126 V!38377)) (EmptyCell!11762) )
))
(declare-datatypes ((array!66870 0))(
  ( (array!66871 (arr!32142 (Array (_ BitVec 32) ValueCell!11762)) (size!32679 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66870)

(declare-fun e!602846 () Bool)

(declare-fun array_inv!24758 (array!66870) Bool)

(assert (=> start!93650 (and (array_inv!24758 _values!955) e!602846)))

(declare-datatypes ((array!66872 0))(
  ( (array!66873 (arr!32143 (Array (_ BitVec 32) (_ BitVec 64))) (size!32680 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66872)

(declare-fun array_inv!24759 (array!66872) Bool)

(assert (=> start!93650 (array_inv!24759 _keys!1163)))

(declare-fun b!1059198 () Bool)

(declare-fun e!602842 () Bool)

(declare-fun mapRes!39058 () Bool)

(assert (=> b!1059198 (= e!602846 (and e!602842 mapRes!39058))))

(declare-fun condMapEmpty!39058 () Bool)

(declare-fun mapDefault!39058 () ValueCell!11762)

