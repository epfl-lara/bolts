; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20796 () Bool)

(assert start!20796)

(declare-fun b_free!5437 () Bool)

(declare-fun b_next!5437 () Bool)

(assert (=> start!20796 (= b_free!5437 (not b_next!5437))))

(declare-fun tp!19352 () Bool)

(declare-fun b_and!12201 () Bool)

(assert (=> start!20796 (= tp!19352 b_and!12201)))

(declare-fun b!208176 () Bool)

(declare-fun res!101240 () Bool)

(declare-fun e!135818 () Bool)

(assert (=> b!208176 (=> (not res!101240) (not e!135818))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9802 0))(
  ( (array!9803 (arr!4651 (Array (_ BitVec 32) (_ BitVec 64))) (size!4976 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9802)

(assert (=> b!208176 (= res!101240 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4976 _keys!825))))))

(declare-fun b!208177 () Bool)

(declare-fun res!101241 () Bool)

(assert (=> b!208177 (=> (not res!101241) (not e!135818))))

(declare-datatypes ((List!2999 0))(
  ( (Nil!2996) (Cons!2995 (h!3637 (_ BitVec 64)) (t!7938 List!2999)) )
))
(declare-fun arrayNoDuplicates!0 (array!9802 (_ BitVec 32) List!2999) Bool)

(assert (=> b!208177 (= res!101241 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2996))))

(declare-fun b!208178 () Bool)

(declare-fun e!135817 () Bool)

(declare-fun tp_is_empty!5299 () Bool)

(assert (=> b!208178 (= e!135817 tp_is_empty!5299)))

(declare-fun b!208179 () Bool)

(declare-fun e!135819 () Bool)

(declare-fun e!135816 () Bool)

(declare-fun mapRes!9017 () Bool)

(assert (=> b!208179 (= e!135819 (and e!135816 mapRes!9017))))

(declare-fun condMapEmpty!9017 () Bool)

(declare-datatypes ((V!6713 0))(
  ( (V!6714 (val!2694 Int)) )
))
(declare-datatypes ((ValueCell!2306 0))(
  ( (ValueCellFull!2306 (v!4660 V!6713)) (EmptyCell!2306) )
))
(declare-datatypes ((array!9804 0))(
  ( (array!9805 (arr!4652 (Array (_ BitVec 32) ValueCell!2306)) (size!4977 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9804)

(declare-fun mapDefault!9017 () ValueCell!2306)

