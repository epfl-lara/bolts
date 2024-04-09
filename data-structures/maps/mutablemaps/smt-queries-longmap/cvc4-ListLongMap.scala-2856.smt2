; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41178 () Bool)

(assert start!41178)

(declare-fun b_free!11039 () Bool)

(declare-fun b_next!11039 () Bool)

(assert (=> start!41178 (= b_free!11039 (not b_next!11039))))

(declare-fun tp!38952 () Bool)

(declare-fun b_and!19335 () Bool)

(assert (=> start!41178 (= tp!38952 b_and!19335)))

(declare-fun b!459804 () Bool)

(declare-fun res!274934 () Bool)

(declare-fun e!268307 () Bool)

(assert (=> b!459804 (=> (not res!274934) (not e!268307))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459804 (= res!274934 (validMask!0 mask!1025))))

(declare-fun b!459805 () Bool)

(declare-datatypes ((Unit!13326 0))(
  ( (Unit!13327) )
))
(declare-fun e!268310 () Unit!13326)

(declare-fun Unit!13328 () Unit!13326)

(assert (=> b!459805 (= e!268310 Unit!13328)))

(declare-fun b!459806 () Bool)

(declare-fun e!268309 () Bool)

(declare-fun e!268303 () Bool)

(declare-fun mapRes!20215 () Bool)

(assert (=> b!459806 (= e!268309 (and e!268303 mapRes!20215))))

(declare-fun condMapEmpty!20215 () Bool)

(declare-datatypes ((V!17607 0))(
  ( (V!17608 (val!6233 Int)) )
))
(declare-datatypes ((ValueCell!5845 0))(
  ( (ValueCellFull!5845 (v!8507 V!17607)) (EmptyCell!5845) )
))
(declare-datatypes ((array!28519 0))(
  ( (array!28520 (arr!13697 (Array (_ BitVec 32) ValueCell!5845)) (size!14049 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28519)

(declare-fun mapDefault!20215 () ValueCell!5845)

