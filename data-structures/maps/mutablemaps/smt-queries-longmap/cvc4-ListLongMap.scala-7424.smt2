; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94420 () Bool)

(assert start!94420)

(declare-fun b_free!21725 () Bool)

(declare-fun b_next!21725 () Bool)

(assert (=> start!94420 (= b_free!21725 (not b_next!21725))))

(declare-fun tp!76619 () Bool)

(declare-fun b_and!34527 () Bool)

(assert (=> start!94420 (= tp!76619 b_and!34527)))

(declare-fun b!1067218 () Bool)

(declare-fun e!608719 () Bool)

(declare-fun e!608720 () Bool)

(declare-fun mapRes!39994 () Bool)

(assert (=> b!1067218 (= e!608719 (and e!608720 mapRes!39994))))

(declare-fun condMapEmpty!39994 () Bool)

(declare-datatypes ((V!39181 0))(
  ( (V!39182 (val!12818 Int)) )
))
(declare-datatypes ((ValueCell!12064 0))(
  ( (ValueCellFull!12064 (v!15433 V!39181)) (EmptyCell!12064) )
))
(declare-datatypes ((array!68026 0))(
  ( (array!68027 (arr!32710 (Array (_ BitVec 32) ValueCell!12064)) (size!33247 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68026)

(declare-fun mapDefault!39994 () ValueCell!12064)

