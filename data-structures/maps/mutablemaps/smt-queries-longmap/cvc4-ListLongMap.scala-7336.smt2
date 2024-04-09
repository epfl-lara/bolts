; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93748 () Bool)

(assert start!93748)

(declare-fun b_free!21197 () Bool)

(declare-fun b_next!21197 () Bool)

(assert (=> start!93748 (= b_free!21197 (not b_next!21197))))

(declare-fun tp!75011 () Bool)

(declare-fun b_and!33925 () Bool)

(assert (=> start!93748 (= tp!75011 b_and!33925)))

(declare-fun mapNonEmpty!39178 () Bool)

(declare-fun mapRes!39178 () Bool)

(declare-fun tp!75012 () Bool)

(declare-fun e!603478 () Bool)

(assert (=> mapNonEmpty!39178 (= mapRes!39178 (and tp!75012 e!603478))))

(declare-datatypes ((V!38477 0))(
  ( (V!38478 (val!12554 Int)) )
))
(declare-datatypes ((ValueCell!11800 0))(
  ( (ValueCellFull!11800 (v!15165 V!38477)) (EmptyCell!11800) )
))
(declare-fun mapValue!39178 () ValueCell!11800)

(declare-fun mapRest!39178 () (Array (_ BitVec 32) ValueCell!11800))

(declare-fun mapKey!39178 () (_ BitVec 32))

(declare-datatypes ((array!67020 0))(
  ( (array!67021 (arr!32215 (Array (_ BitVec 32) ValueCell!11800)) (size!32752 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67020)

(assert (=> mapNonEmpty!39178 (= (arr!32215 _values!955) (store mapRest!39178 mapKey!39178 mapValue!39178))))

(declare-fun b!1060007 () Bool)

(declare-fun e!603479 () Bool)

(declare-fun e!603476 () Bool)

(assert (=> b!1060007 (= e!603479 (and e!603476 mapRes!39178))))

(declare-fun condMapEmpty!39178 () Bool)

(declare-fun mapDefault!39178 () ValueCell!11800)

