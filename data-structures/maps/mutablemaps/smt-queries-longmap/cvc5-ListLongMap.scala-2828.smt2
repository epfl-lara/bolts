; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40940 () Bool)

(assert start!40940)

(declare-fun b_free!10867 () Bool)

(declare-fun b_next!10867 () Bool)

(assert (=> start!40940 (= b_free!10867 (not b_next!10867))))

(declare-fun tp!38427 () Bool)

(declare-fun b_and!19027 () Bool)

(assert (=> start!40940 (= tp!38427 b_and!19027)))

(declare-fun b!454937 () Bool)

(declare-fun res!271277 () Bool)

(declare-fun e!266054 () Bool)

(assert (=> b!454937 (=> (not res!271277) (not e!266054))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454937 (= res!271277 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19948 () Bool)

(declare-fun mapRes!19948 () Bool)

(declare-fun tp!38428 () Bool)

(declare-fun e!266050 () Bool)

(assert (=> mapNonEmpty!19948 (= mapRes!19948 (and tp!38428 e!266050))))

(declare-datatypes ((V!17379 0))(
  ( (V!17380 (val!6147 Int)) )
))
(declare-datatypes ((ValueCell!5759 0))(
  ( (ValueCellFull!5759 (v!8409 V!17379)) (EmptyCell!5759) )
))
(declare-fun mapValue!19948 () ValueCell!5759)

(declare-datatypes ((array!28179 0))(
  ( (array!28180 (arr!13530 (Array (_ BitVec 32) ValueCell!5759)) (size!13882 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28179)

(declare-fun mapKey!19948 () (_ BitVec 32))

(declare-fun mapRest!19948 () (Array (_ BitVec 32) ValueCell!5759))

(assert (=> mapNonEmpty!19948 (= (arr!13530 _values!549) (store mapRest!19948 mapKey!19948 mapValue!19948))))

(declare-fun b!454938 () Bool)

(declare-fun e!266051 () Bool)

(declare-fun tp_is_empty!12205 () Bool)

(assert (=> b!454938 (= e!266051 tp_is_empty!12205)))

(declare-fun b!454939 () Bool)

(declare-fun res!271281 () Bool)

(assert (=> b!454939 (=> (not res!271281) (not e!266054))))

(declare-datatypes ((array!28181 0))(
  ( (array!28182 (arr!13531 (Array (_ BitVec 32) (_ BitVec 64))) (size!13883 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28181)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28181 (_ BitVec 32)) Bool)

(assert (=> b!454939 (= res!271281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454940 () Bool)

(declare-fun res!271276 () Bool)

(assert (=> b!454940 (=> (not res!271276) (not e!266054))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454940 (= res!271276 (or (= (select (arr!13531 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13531 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!271284 () Bool)

(assert (=> start!40940 (=> (not res!271284) (not e!266054))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40940 (= res!271284 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13883 _keys!709))))))

(assert (=> start!40940 e!266054))

(assert (=> start!40940 tp_is_empty!12205))

(assert (=> start!40940 tp!38427))

(assert (=> start!40940 true))

(declare-fun e!266053 () Bool)

(declare-fun array_inv!9790 (array!28179) Bool)

(assert (=> start!40940 (and (array_inv!9790 _values!549) e!266053)))

(declare-fun array_inv!9791 (array!28181) Bool)

(assert (=> start!40940 (array_inv!9791 _keys!709)))

(declare-fun b!454941 () Bool)

(declare-fun res!271280 () Bool)

(assert (=> b!454941 (=> (not res!271280) (not e!266054))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!454941 (= res!271280 (and (= (size!13882 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13883 _keys!709) (size!13882 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454942 () Bool)

(assert (=> b!454942 (= e!266053 (and e!266051 mapRes!19948))))

(declare-fun condMapEmpty!19948 () Bool)

(declare-fun mapDefault!19948 () ValueCell!5759)

