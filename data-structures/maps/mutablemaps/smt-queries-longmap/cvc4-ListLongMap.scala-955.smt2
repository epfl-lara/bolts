; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20842 () Bool)

(assert start!20842)

(declare-fun b_free!5483 () Bool)

(declare-fun b_next!5483 () Bool)

(assert (=> start!20842 (= b_free!5483 (not b_next!5483))))

(declare-fun tp!19489 () Bool)

(declare-fun b_and!12247 () Bool)

(assert (=> start!20842 (= tp!19489 b_and!12247)))

(declare-fun b!208866 () Bool)

(declare-fun res!101724 () Bool)

(declare-fun e!136165 () Bool)

(assert (=> b!208866 (=> (not res!101724) (not e!136165))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9892 0))(
  ( (array!9893 (arr!4696 (Array (_ BitVec 32) (_ BitVec 64))) (size!5021 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9892)

(assert (=> b!208866 (= res!101724 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5021 _keys!825))))))

(declare-fun b!208867 () Bool)

(declare-fun e!136161 () Bool)

(declare-fun e!136163 () Bool)

(declare-fun mapRes!9086 () Bool)

(assert (=> b!208867 (= e!136161 (and e!136163 mapRes!9086))))

(declare-fun condMapEmpty!9086 () Bool)

(declare-datatypes ((V!6773 0))(
  ( (V!6774 (val!2717 Int)) )
))
(declare-datatypes ((ValueCell!2329 0))(
  ( (ValueCellFull!2329 (v!4683 V!6773)) (EmptyCell!2329) )
))
(declare-datatypes ((array!9894 0))(
  ( (array!9895 (arr!4697 (Array (_ BitVec 32) ValueCell!2329)) (size!5022 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9894)

(declare-fun mapDefault!9086 () ValueCell!2329)

