; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95140 () Bool)

(assert start!95140)

(declare-fun b_free!22201 () Bool)

(declare-fun b_next!22201 () Bool)

(assert (=> start!95140 (= b_free!22201 (not b_next!22201))))

(declare-fun tp!78086 () Bool)

(declare-fun b_and!35139 () Bool)

(assert (=> start!95140 (= tp!78086 b_and!35139)))

(declare-fun b!1075061 () Bool)

(declare-fun e!614418 () Bool)

(declare-fun e!614421 () Bool)

(declare-fun mapRes!40747 () Bool)

(assert (=> b!1075061 (= e!614418 (and e!614421 mapRes!40747))))

(declare-fun condMapEmpty!40747 () Bool)

(declare-datatypes ((V!39817 0))(
  ( (V!39818 (val!13056 Int)) )
))
(declare-datatypes ((ValueCell!12302 0))(
  ( (ValueCellFull!12302 (v!15680 V!39817)) (EmptyCell!12302) )
))
(declare-datatypes ((array!68952 0))(
  ( (array!68953 (arr!33160 (Array (_ BitVec 32) ValueCell!12302)) (size!33697 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68952)

(declare-fun mapDefault!40747 () ValueCell!12302)

