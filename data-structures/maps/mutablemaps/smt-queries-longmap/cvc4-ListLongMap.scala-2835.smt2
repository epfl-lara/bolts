; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40986 () Bool)

(assert start!40986)

(declare-fun b_free!10913 () Bool)

(declare-fun b_next!10913 () Bool)

(assert (=> start!40986 (= b_free!10913 (not b_next!10913))))

(declare-fun tp!38565 () Bool)

(declare-fun b_and!19073 () Bool)

(assert (=> start!40986 (= tp!38565 b_and!19073)))

(declare-fun b!455972 () Bool)

(declare-fun res!272113 () Bool)

(declare-fun e!266465 () Bool)

(assert (=> b!455972 (=> (not res!272113) (not e!266465))))

(declare-datatypes ((array!28269 0))(
  ( (array!28270 (arr!13575 (Array (_ BitVec 32) (_ BitVec 64))) (size!13927 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28269)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455972 (= res!272113 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!455973 () Bool)

(declare-fun e!266468 () Bool)

(declare-fun tp_is_empty!12251 () Bool)

(assert (=> b!455973 (= e!266468 tp_is_empty!12251)))

(declare-fun b!455974 () Bool)

(declare-fun res!272112 () Bool)

(assert (=> b!455974 (=> (not res!272112) (not e!266465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455974 (= res!272112 (validKeyInArray!0 k!794))))

(declare-fun b!455975 () Bool)

(declare-fun res!272106 () Bool)

(assert (=> b!455975 (=> (not res!272106) (not e!266465))))

(declare-datatypes ((List!8188 0))(
  ( (Nil!8185) (Cons!8184 (h!9040 (_ BitVec 64)) (t!14024 List!8188)) )
))
(declare-fun arrayNoDuplicates!0 (array!28269 (_ BitVec 32) List!8188) Bool)

(assert (=> b!455975 (= res!272106 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8185))))

(declare-fun b!455976 () Bool)

(declare-fun res!272103 () Bool)

(assert (=> b!455976 (=> (not res!272103) (not e!266465))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17439 0))(
  ( (V!17440 (val!6170 Int)) )
))
(declare-datatypes ((ValueCell!5782 0))(
  ( (ValueCellFull!5782 (v!8432 V!17439)) (EmptyCell!5782) )
))
(declare-datatypes ((array!28271 0))(
  ( (array!28272 (arr!13576 (Array (_ BitVec 32) ValueCell!5782)) (size!13928 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28271)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!455976 (= res!272103 (and (= (size!13928 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13927 _keys!709) (size!13928 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!20017 () Bool)

(declare-fun mapRes!20017 () Bool)

(declare-fun tp!38566 () Bool)

(declare-fun e!266467 () Bool)

(assert (=> mapNonEmpty!20017 (= mapRes!20017 (and tp!38566 e!266467))))

(declare-fun mapRest!20017 () (Array (_ BitVec 32) ValueCell!5782))

(declare-fun mapKey!20017 () (_ BitVec 32))

(declare-fun mapValue!20017 () ValueCell!5782)

(assert (=> mapNonEmpty!20017 (= (arr!13576 _values!549) (store mapRest!20017 mapKey!20017 mapValue!20017))))

(declare-fun res!272107 () Bool)

(assert (=> start!40986 (=> (not res!272107) (not e!266465))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40986 (= res!272107 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13927 _keys!709))))))

(assert (=> start!40986 e!266465))

(assert (=> start!40986 tp_is_empty!12251))

(assert (=> start!40986 tp!38565))

(assert (=> start!40986 true))

(declare-fun e!266466 () Bool)

(declare-fun array_inv!9820 (array!28271) Bool)

(assert (=> start!40986 (and (array_inv!9820 _values!549) e!266466)))

(declare-fun array_inv!9821 (array!28269) Bool)

(assert (=> start!40986 (array_inv!9821 _keys!709)))

(declare-fun b!455977 () Bool)

(declare-fun res!272110 () Bool)

(assert (=> b!455977 (=> (not res!272110) (not e!266465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455977 (= res!272110 (validMask!0 mask!1025))))

(declare-fun b!455978 () Bool)

(declare-fun res!272104 () Bool)

(assert (=> b!455978 (=> (not res!272104) (not e!266465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28269 (_ BitVec 32)) Bool)

(assert (=> b!455978 (= res!272104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455979 () Bool)

(declare-fun res!272105 () Bool)

(assert (=> b!455979 (=> (not res!272105) (not e!266465))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455979 (= res!272105 (or (= (select (arr!13575 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13575 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455980 () Bool)

(assert (=> b!455980 (= e!266466 (and e!266468 mapRes!20017))))

(declare-fun condMapEmpty!20017 () Bool)

(declare-fun mapDefault!20017 () ValueCell!5782)

