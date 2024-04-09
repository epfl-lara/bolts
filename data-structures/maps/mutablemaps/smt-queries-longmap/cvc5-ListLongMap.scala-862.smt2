; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20280 () Bool)

(assert start!20280)

(declare-fun b_free!4927 () Bool)

(declare-fun b_next!4927 () Bool)

(assert (=> start!20280 (= b_free!4927 (not b_next!4927))))

(declare-fun tp!17813 () Bool)

(declare-fun b_and!11691 () Bool)

(assert (=> start!20280 (= tp!17813 b_and!11691)))

(declare-fun b!199410 () Bool)

(declare-fun res!94796 () Bool)

(declare-fun e!130912 () Bool)

(assert (=> b!199410 (=> (not res!94796) (not e!130912))))

(declare-datatypes ((array!8806 0))(
  ( (array!8807 (arr!4153 (Array (_ BitVec 32) (_ BitVec 64))) (size!4478 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8806)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8806 (_ BitVec 32)) Bool)

(assert (=> b!199410 (= res!94796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199411 () Bool)

(declare-fun res!94794 () Bool)

(assert (=> b!199411 (=> (not res!94794) (not e!130912))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6025 0))(
  ( (V!6026 (val!2436 Int)) )
))
(declare-datatypes ((ValueCell!2048 0))(
  ( (ValueCellFull!2048 (v!4402 V!6025)) (EmptyCell!2048) )
))
(declare-datatypes ((array!8808 0))(
  ( (array!8809 (arr!4154 (Array (_ BitVec 32) ValueCell!2048)) (size!4479 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8808)

(assert (=> b!199411 (= res!94794 (and (= (size!4479 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4478 _keys!825) (size!4479 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199412 () Bool)

(declare-fun e!130915 () Bool)

(declare-fun tp_is_empty!4783 () Bool)

(assert (=> b!199412 (= e!130915 tp_is_empty!4783)))

(declare-fun b!199413 () Bool)

(declare-fun res!94792 () Bool)

(assert (=> b!199413 (=> (not res!94792) (not e!130912))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199413 (= res!94792 (= (select (arr!4153 _keys!825) i!601) k!843))))

(declare-fun b!199414 () Bool)

(declare-fun res!94798 () Bool)

(assert (=> b!199414 (=> (not res!94798) (not e!130912))))

(assert (=> b!199414 (= res!94798 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4478 _keys!825))))))

(declare-fun res!94793 () Bool)

(assert (=> start!20280 (=> (not res!94793) (not e!130912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20280 (= res!94793 (validMask!0 mask!1149))))

(assert (=> start!20280 e!130912))

(declare-fun e!130914 () Bool)

(declare-fun array_inv!2717 (array!8808) Bool)

(assert (=> start!20280 (and (array_inv!2717 _values!649) e!130914)))

(assert (=> start!20280 true))

(assert (=> start!20280 tp_is_empty!4783))

(declare-fun array_inv!2718 (array!8806) Bool)

(assert (=> start!20280 (array_inv!2718 _keys!825)))

(assert (=> start!20280 tp!17813))

(declare-fun b!199415 () Bool)

(declare-fun e!130913 () Bool)

(assert (=> b!199415 (= e!130913 tp_is_empty!4783)))

(declare-fun mapNonEmpty!8243 () Bool)

(declare-fun mapRes!8243 () Bool)

(declare-fun tp!17812 () Bool)

(assert (=> mapNonEmpty!8243 (= mapRes!8243 (and tp!17812 e!130915))))

(declare-fun mapValue!8243 () ValueCell!2048)

(declare-fun mapRest!8243 () (Array (_ BitVec 32) ValueCell!2048))

(declare-fun mapKey!8243 () (_ BitVec 32))

(assert (=> mapNonEmpty!8243 (= (arr!4154 _values!649) (store mapRest!8243 mapKey!8243 mapValue!8243))))

(declare-fun b!199416 () Bool)

(declare-fun res!94797 () Bool)

(assert (=> b!199416 (=> (not res!94797) (not e!130912))))

(declare-datatypes ((List!2623 0))(
  ( (Nil!2620) (Cons!2619 (h!3261 (_ BitVec 64)) (t!7562 List!2623)) )
))
(declare-fun arrayNoDuplicates!0 (array!8806 (_ BitVec 32) List!2623) Bool)

(assert (=> b!199416 (= res!94797 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2620))))

(declare-fun mapIsEmpty!8243 () Bool)

(assert (=> mapIsEmpty!8243 mapRes!8243))

(declare-fun b!199417 () Bool)

(assert (=> b!199417 (= e!130914 (and e!130913 mapRes!8243))))

(declare-fun condMapEmpty!8243 () Bool)

(declare-fun mapDefault!8243 () ValueCell!2048)

