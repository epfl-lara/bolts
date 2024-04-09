; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20184 () Bool)

(assert start!20184)

(declare-fun b_free!4831 () Bool)

(declare-fun b_next!4831 () Bool)

(assert (=> start!20184 (= b_free!4831 (not b_next!4831))))

(declare-fun tp!17525 () Bool)

(declare-fun b_and!11595 () Bool)

(assert (=> start!20184 (= tp!17525 b_and!11595)))

(declare-fun b!197970 () Bool)

(declare-fun e!130191 () Bool)

(declare-fun tp_is_empty!4687 () Bool)

(assert (=> b!197970 (= e!130191 tp_is_empty!4687)))

(declare-fun b!197972 () Bool)

(declare-fun e!130194 () Bool)

(assert (=> b!197972 (= e!130194 tp_is_empty!4687)))

(declare-fun b!197973 () Bool)

(declare-fun res!93784 () Bool)

(declare-fun e!130193 () Bool)

(assert (=> b!197973 (=> (not res!93784) (not e!130193))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8624 0))(
  ( (array!8625 (arr!4062 (Array (_ BitVec 32) (_ BitVec 64))) (size!4387 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8624)

(assert (=> b!197973 (= res!93784 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4387 _keys!825))))))

(declare-fun b!197974 () Bool)

(declare-fun res!93787 () Bool)

(assert (=> b!197974 (=> (not res!93787) (not e!130193))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8624 (_ BitVec 32)) Bool)

(assert (=> b!197974 (= res!93787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197975 () Bool)

(declare-fun res!93785 () Bool)

(assert (=> b!197975 (=> (not res!93785) (not e!130193))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197975 (= res!93785 (validKeyInArray!0 k!843))))

(declare-fun b!197971 () Bool)

(declare-fun res!93788 () Bool)

(assert (=> b!197971 (=> (not res!93788) (not e!130193))))

(declare-datatypes ((List!2558 0))(
  ( (Nil!2555) (Cons!2554 (h!3196 (_ BitVec 64)) (t!7497 List!2558)) )
))
(declare-fun arrayNoDuplicates!0 (array!8624 (_ BitVec 32) List!2558) Bool)

(assert (=> b!197971 (= res!93788 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2555))))

(declare-fun res!93790 () Bool)

(assert (=> start!20184 (=> (not res!93790) (not e!130193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20184 (= res!93790 (validMask!0 mask!1149))))

(assert (=> start!20184 e!130193))

(declare-datatypes ((V!5897 0))(
  ( (V!5898 (val!2388 Int)) )
))
(declare-datatypes ((ValueCell!2000 0))(
  ( (ValueCellFull!2000 (v!4354 V!5897)) (EmptyCell!2000) )
))
(declare-datatypes ((array!8626 0))(
  ( (array!8627 (arr!4063 (Array (_ BitVec 32) ValueCell!2000)) (size!4388 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8626)

(declare-fun e!130195 () Bool)

(declare-fun array_inv!2645 (array!8626) Bool)

(assert (=> start!20184 (and (array_inv!2645 _values!649) e!130195)))

(assert (=> start!20184 true))

(assert (=> start!20184 tp_is_empty!4687))

(declare-fun array_inv!2646 (array!8624) Bool)

(assert (=> start!20184 (array_inv!2646 _keys!825)))

(assert (=> start!20184 tp!17525))

(declare-fun b!197976 () Bool)

(declare-fun mapRes!8099 () Bool)

(assert (=> b!197976 (= e!130195 (and e!130191 mapRes!8099))))

(declare-fun condMapEmpty!8099 () Bool)

(declare-fun mapDefault!8099 () ValueCell!2000)

