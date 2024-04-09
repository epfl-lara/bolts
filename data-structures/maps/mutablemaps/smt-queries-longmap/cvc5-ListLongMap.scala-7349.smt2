; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93834 () Bool)

(assert start!93834)

(declare-fun b_free!21271 () Bool)

(declare-fun b_next!21271 () Bool)

(assert (=> start!93834 (= b_free!21271 (not b_next!21271))))

(declare-fun tp!75237 () Bool)

(declare-fun b_and!34003 () Bool)

(assert (=> start!93834 (= tp!75237 b_and!34003)))

(declare-fun b!1060857 () Bool)

(declare-fun res!708578 () Bool)

(declare-fun e!604079 () Bool)

(assert (=> b!1060857 (=> (not res!708578) (not e!604079))))

(declare-datatypes ((array!67156 0))(
  ( (array!67157 (arr!32282 (Array (_ BitVec 32) (_ BitVec 64))) (size!32819 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67156)

(declare-datatypes ((List!22623 0))(
  ( (Nil!22620) (Cons!22619 (h!23828 (_ BitVec 64)) (t!31939 List!22623)) )
))
(declare-fun arrayNoDuplicates!0 (array!67156 (_ BitVec 32) List!22623) Bool)

(assert (=> b!1060857 (= res!708578 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22620))))

(declare-fun b!1060858 () Bool)

(declare-fun e!604081 () Bool)

(declare-fun tp_is_empty!25081 () Bool)

(assert (=> b!1060858 (= e!604081 tp_is_empty!25081)))

(declare-fun b!1060859 () Bool)

(declare-fun e!604080 () Bool)

(declare-fun e!604078 () Bool)

(declare-fun mapRes!39292 () Bool)

(assert (=> b!1060859 (= e!604080 (and e!604078 mapRes!39292))))

(declare-fun condMapEmpty!39292 () Bool)

(declare-datatypes ((V!38577 0))(
  ( (V!38578 (val!12591 Int)) )
))
(declare-datatypes ((ValueCell!11837 0))(
  ( (ValueCellFull!11837 (v!15202 V!38577)) (EmptyCell!11837) )
))
(declare-datatypes ((array!67158 0))(
  ( (array!67159 (arr!32283 (Array (_ BitVec 32) ValueCell!11837)) (size!32820 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67158)

(declare-fun mapDefault!39292 () ValueCell!11837)

