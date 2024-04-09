; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82042 () Bool)

(assert start!82042)

(declare-fun b!956359 () Bool)

(declare-fun e!538952 () Bool)

(declare-fun tp_is_empty!21053 () Bool)

(assert (=> b!956359 (= e!538952 tp_is_empty!21053)))

(declare-fun b!956360 () Bool)

(declare-fun e!538953 () Bool)

(declare-fun mapRes!33541 () Bool)

(assert (=> b!956360 (= e!538953 (and e!538952 mapRes!33541))))

(declare-fun condMapEmpty!33541 () Bool)

(declare-datatypes ((V!33053 0))(
  ( (V!33054 (val!10577 Int)) )
))
(declare-datatypes ((ValueCell!10045 0))(
  ( (ValueCellFull!10045 (v!13132 V!33053)) (EmptyCell!10045) )
))
(declare-datatypes ((array!58225 0))(
  ( (array!58226 (arr!27988 (Array (_ BitVec 32) ValueCell!10045)) (size!28468 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58225)

(declare-fun mapDefault!33541 () ValueCell!10045)

