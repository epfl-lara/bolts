; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35806 () Bool)

(assert start!35806)

(declare-fun res!199801 () Bool)

(declare-fun e!220149 () Bool)

(assert (=> start!35806 (=> (not res!199801) (not e!220149))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35806 (= res!199801 (validMask!0 mask!1842))))

(assert (=> start!35806 e!220149))

(assert (=> start!35806 true))

(declare-datatypes ((V!11979 0))(
  ( (V!11980 (val!4170 Int)) )
))
(declare-datatypes ((ValueCell!3782 0))(
  ( (ValueCellFull!3782 (v!6360 V!11979)) (EmptyCell!3782) )
))
(declare-datatypes ((array!20023 0))(
  ( (array!20024 (arr!9502 (Array (_ BitVec 32) ValueCell!3782)) (size!9854 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20023)

(declare-fun e!220148 () Bool)

(declare-fun array_inv!6994 (array!20023) Bool)

(assert (=> start!35806 (and (array_inv!6994 _values!1208) e!220148)))

(declare-datatypes ((array!20025 0))(
  ( (array!20026 (arr!9503 (Array (_ BitVec 32) (_ BitVec 64))) (size!9855 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20025)

(declare-fun array_inv!6995 (array!20025) Bool)

(assert (=> start!35806 (array_inv!6995 _keys!1456)))

(declare-fun b!359367 () Bool)

(declare-fun e!220151 () Bool)

(declare-fun mapRes!13884 () Bool)

(assert (=> b!359367 (= e!220148 (and e!220151 mapRes!13884))))

(declare-fun condMapEmpty!13884 () Bool)

(declare-fun mapDefault!13884 () ValueCell!3782)

