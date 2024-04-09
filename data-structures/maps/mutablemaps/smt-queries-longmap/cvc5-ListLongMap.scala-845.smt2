; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20178 () Bool)

(assert start!20178)

(declare-fun b_free!4825 () Bool)

(declare-fun b_next!4825 () Bool)

(assert (=> start!20178 (= b_free!4825 (not b_next!4825))))

(declare-fun tp!17507 () Bool)

(declare-fun b_and!11589 () Bool)

(assert (=> start!20178 (= tp!17507 b_and!11589)))

(declare-fun b!197880 () Bool)

(declare-fun res!93727 () Bool)

(declare-fun e!130149 () Bool)

(assert (=> b!197880 (=> (not res!93727) (not e!130149))))

(declare-datatypes ((array!8612 0))(
  ( (array!8613 (arr!4056 (Array (_ BitVec 32) (_ BitVec 64))) (size!4381 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8612)

(declare-datatypes ((V!5889 0))(
  ( (V!5890 (val!2385 Int)) )
))
(declare-datatypes ((ValueCell!1997 0))(
  ( (ValueCellFull!1997 (v!4351 V!5889)) (EmptyCell!1997) )
))
(declare-datatypes ((array!8614 0))(
  ( (array!8615 (arr!4057 (Array (_ BitVec 32) ValueCell!1997)) (size!4382 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8614)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197880 (= res!93727 (and (= (size!4382 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4381 _keys!825) (size!4382 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197881 () Bool)

(declare-fun res!93726 () Bool)

(assert (=> b!197881 (=> (not res!93726) (not e!130149))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197881 (= res!93726 (= (select (arr!4056 _keys!825) i!601) k!843))))

(declare-fun b!197882 () Bool)

(declare-fun res!93724 () Bool)

(assert (=> b!197882 (=> (not res!93724) (not e!130149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197882 (= res!93724 (validKeyInArray!0 k!843))))

(declare-fun b!197883 () Bool)

(declare-fun res!93721 () Bool)

(assert (=> b!197883 (=> (not res!93721) (not e!130149))))

(declare-datatypes ((List!2553 0))(
  ( (Nil!2550) (Cons!2549 (h!3191 (_ BitVec 64)) (t!7492 List!2553)) )
))
(declare-fun arrayNoDuplicates!0 (array!8612 (_ BitVec 32) List!2553) Bool)

(assert (=> b!197883 (= res!93721 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2550))))

(declare-fun b!197884 () Bool)

(declare-fun e!130148 () Bool)

(declare-fun tp_is_empty!4681 () Bool)

(assert (=> b!197884 (= e!130148 tp_is_empty!4681)))

(declare-fun b!197885 () Bool)

(declare-fun e!130150 () Bool)

(assert (=> b!197885 (= e!130150 tp_is_empty!4681)))

(declare-fun res!93723 () Bool)

(assert (=> start!20178 (=> (not res!93723) (not e!130149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20178 (= res!93723 (validMask!0 mask!1149))))

(assert (=> start!20178 e!130149))

(declare-fun e!130146 () Bool)

(declare-fun array_inv!2641 (array!8614) Bool)

(assert (=> start!20178 (and (array_inv!2641 _values!649) e!130146)))

(assert (=> start!20178 true))

(assert (=> start!20178 tp_is_empty!4681))

(declare-fun array_inv!2642 (array!8612) Bool)

(assert (=> start!20178 (array_inv!2642 _keys!825)))

(assert (=> start!20178 tp!17507))

(declare-fun b!197886 () Bool)

(declare-fun mapRes!8090 () Bool)

(assert (=> b!197886 (= e!130146 (and e!130148 mapRes!8090))))

(declare-fun condMapEmpty!8090 () Bool)

(declare-fun mapDefault!8090 () ValueCell!1997)

