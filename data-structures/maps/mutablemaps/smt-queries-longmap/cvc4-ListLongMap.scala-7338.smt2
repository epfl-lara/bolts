; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93760 () Bool)

(assert start!93760)

(declare-fun b_free!21209 () Bool)

(declare-fun b_next!21209 () Bool)

(assert (=> start!93760 (= b_free!21209 (not b_next!21209))))

(declare-fun tp!75047 () Bool)

(declare-fun b_and!33937 () Bool)

(assert (=> start!93760 (= tp!75047 b_and!33937)))

(declare-fun b!1060133 () Bool)

(declare-fun e!603568 () Bool)

(declare-fun e!603565 () Bool)

(declare-fun mapRes!39196 () Bool)

(assert (=> b!1060133 (= e!603568 (and e!603565 mapRes!39196))))

(declare-fun condMapEmpty!39196 () Bool)

(declare-datatypes ((V!38493 0))(
  ( (V!38494 (val!12560 Int)) )
))
(declare-datatypes ((ValueCell!11806 0))(
  ( (ValueCellFull!11806 (v!15171 V!38493)) (EmptyCell!11806) )
))
(declare-datatypes ((array!67040 0))(
  ( (array!67041 (arr!32225 (Array (_ BitVec 32) ValueCell!11806)) (size!32762 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67040)

(declare-fun mapDefault!39196 () ValueCell!11806)

