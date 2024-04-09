; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35244 () Bool)

(assert start!35244)

(declare-fun b_free!7811 () Bool)

(declare-fun b_next!7811 () Bool)

(assert (=> start!35244 (= b_free!7811 (not b_next!7811))))

(declare-fun tp!27026 () Bool)

(declare-fun b_and!15069 () Bool)

(assert (=> start!35244 (= tp!27026 b_and!15069)))

(declare-fun b!353082 () Bool)

(declare-fun e!216205 () Bool)

(declare-datatypes ((SeekEntryResult!3473 0))(
  ( (MissingZero!3473 (index!16071 (_ BitVec 32))) (Found!3473 (index!16072 (_ BitVec 32))) (Intermediate!3473 (undefined!4285 Bool) (index!16073 (_ BitVec 32)) (x!35134 (_ BitVec 32))) (Undefined!3473) (MissingVacant!3473 (index!16074 (_ BitVec 32))) )
))
(declare-fun lt!165438 () SeekEntryResult!3473)

(assert (=> b!353082 (= e!216205 (and (not (is-Found!3473 lt!165438)) (not (is-MissingZero!3473 lt!165438)) (not (is-MissingVacant!3473 lt!165438)) (not (is-Undefined!3473 lt!165438))))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!19077 0))(
  ( (array!19078 (arr!9036 (Array (_ BitVec 32) (_ BitVec 64))) (size!9388 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19077)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19077 (_ BitVec 32)) SeekEntryResult!3473)

(assert (=> b!353082 (= lt!165438 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!353083 () Bool)

(declare-fun res!195879 () Bool)

(assert (=> b!353083 (=> (not res!195879) (not e!216205))))

(declare-datatypes ((V!11327 0))(
  ( (V!11328 (val!3926 Int)) )
))
(declare-datatypes ((ValueCell!3538 0))(
  ( (ValueCellFull!3538 (v!6114 V!11327)) (EmptyCell!3538) )
))
(declare-datatypes ((array!19079 0))(
  ( (array!19080 (arr!9037 (Array (_ BitVec 32) ValueCell!3538)) (size!9389 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19079)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!353083 (= res!195879 (and (= (size!9389 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9388 _keys!1895) (size!9389 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!195878 () Bool)

(assert (=> start!35244 (=> (not res!195878) (not e!216205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35244 (= res!195878 (validMask!0 mask!2385))))

(assert (=> start!35244 e!216205))

(assert (=> start!35244 true))

(declare-fun tp_is_empty!7763 () Bool)

(assert (=> start!35244 tp_is_empty!7763))

(assert (=> start!35244 tp!27026))

(declare-fun e!216207 () Bool)

(declare-fun array_inv!6654 (array!19079) Bool)

(assert (=> start!35244 (and (array_inv!6654 _values!1525) e!216207)))

(declare-fun array_inv!6655 (array!19077) Bool)

(assert (=> start!35244 (array_inv!6655 _keys!1895)))

(declare-fun b!353084 () Bool)

(declare-fun res!195876 () Bool)

(assert (=> b!353084 (=> (not res!195876) (not e!216205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!353084 (= res!195876 (validKeyInArray!0 k!1348))))

(declare-fun b!353085 () Bool)

(declare-fun res!195880 () Bool)

(assert (=> b!353085 (=> (not res!195880) (not e!216205))))

(declare-datatypes ((List!5293 0))(
  ( (Nil!5290) (Cons!5289 (h!6145 (_ BitVec 64)) (t!10449 List!5293)) )
))
(declare-fun arrayNoDuplicates!0 (array!19077 (_ BitVec 32) List!5293) Bool)

(assert (=> b!353085 (= res!195880 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5290))))

(declare-fun b!353086 () Bool)

(declare-fun res!195877 () Bool)

(assert (=> b!353086 (=> (not res!195877) (not e!216205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19077 (_ BitVec 32)) Bool)

(assert (=> b!353086 (= res!195877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!353087 () Bool)

(declare-fun e!216206 () Bool)

(declare-fun mapRes!13131 () Bool)

(assert (=> b!353087 (= e!216207 (and e!216206 mapRes!13131))))

(declare-fun condMapEmpty!13131 () Bool)

(declare-fun mapDefault!13131 () ValueCell!3538)

