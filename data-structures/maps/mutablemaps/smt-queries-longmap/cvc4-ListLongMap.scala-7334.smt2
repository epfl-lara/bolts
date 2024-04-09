; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93736 () Bool)

(assert start!93736)

(declare-fun b_free!21185 () Bool)

(declare-fun b_next!21185 () Bool)

(assert (=> start!93736 (= b_free!21185 (not b_next!21185))))

(declare-fun tp!74976 () Bool)

(declare-fun b_and!33913 () Bool)

(assert (=> start!93736 (= tp!74976 b_and!33913)))

(declare-fun b!1059881 () Bool)

(declare-fun e!603388 () Bool)

(declare-fun e!603389 () Bool)

(declare-fun mapRes!39160 () Bool)

(assert (=> b!1059881 (= e!603388 (and e!603389 mapRes!39160))))

(declare-fun condMapEmpty!39160 () Bool)

(declare-datatypes ((V!38461 0))(
  ( (V!38462 (val!12548 Int)) )
))
(declare-datatypes ((ValueCell!11794 0))(
  ( (ValueCellFull!11794 (v!15159 V!38461)) (EmptyCell!11794) )
))
(declare-datatypes ((array!66998 0))(
  ( (array!66999 (arr!32204 (Array (_ BitVec 32) ValueCell!11794)) (size!32741 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66998)

(declare-fun mapDefault!39160 () ValueCell!11794)

