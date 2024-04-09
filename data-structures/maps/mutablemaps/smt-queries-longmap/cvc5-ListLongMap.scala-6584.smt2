; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83416 () Bool)

(assert start!83416)

(declare-fun b_free!19381 () Bool)

(declare-fun b_next!19381 () Bool)

(assert (=> start!83416 (= b_free!19381 (not b_next!19381))))

(declare-fun tp!67423 () Bool)

(declare-fun b_and!31001 () Bool)

(assert (=> start!83416 (= tp!67423 b_and!31001)))

(declare-fun mapNonEmpty!35428 () Bool)

(declare-fun mapRes!35428 () Bool)

(declare-fun tp!67422 () Bool)

(declare-fun e!548859 () Bool)

(assert (=> mapNonEmpty!35428 (= mapRes!35428 (and tp!67422 e!548859))))

(declare-fun mapKey!35428 () (_ BitVec 32))

(declare-datatypes ((V!34689 0))(
  ( (V!34690 (val!11190 Int)) )
))
(declare-datatypes ((ValueCell!10658 0))(
  ( (ValueCellFull!10658 (v!13749 V!34689)) (EmptyCell!10658) )
))
(declare-datatypes ((array!60583 0))(
  ( (array!60584 (arr!29151 (Array (_ BitVec 32) ValueCell!10658)) (size!29631 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60583)

(declare-fun mapRest!35428 () (Array (_ BitVec 32) ValueCell!10658))

(declare-fun mapValue!35428 () ValueCell!10658)

(assert (=> mapNonEmpty!35428 (= (arr!29151 _values!1425) (store mapRest!35428 mapKey!35428 mapValue!35428))))

(declare-fun res!651857 () Bool)

(declare-fun e!548858 () Bool)

(assert (=> start!83416 (=> (not res!651857) (not e!548858))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83416 (= res!651857 (validMask!0 mask!2147))))

(assert (=> start!83416 e!548858))

(assert (=> start!83416 true))

(declare-fun e!548857 () Bool)

(declare-fun array_inv!22445 (array!60583) Bool)

(assert (=> start!83416 (and (array_inv!22445 _values!1425) e!548857)))

(declare-fun tp_is_empty!22279 () Bool)

(assert (=> start!83416 tp_is_empty!22279))

(assert (=> start!83416 tp!67423))

(declare-datatypes ((array!60585 0))(
  ( (array!60586 (arr!29152 (Array (_ BitVec 32) (_ BitVec 64))) (size!29632 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60585)

(declare-fun array_inv!22446 (array!60585) Bool)

(assert (=> start!83416 (array_inv!22446 _keys!1717)))

(declare-fun b!973654 () Bool)

(assert (=> b!973654 (= e!548858 false)))

(declare-datatypes ((tuple2!14470 0))(
  ( (tuple2!14471 (_1!7245 (_ BitVec 64)) (_2!7245 V!34689)) )
))
(declare-datatypes ((List!20348 0))(
  ( (Nil!20345) (Cons!20344 (h!21506 tuple2!14470) (t!28833 List!20348)) )
))
(declare-datatypes ((ListLongMap!13181 0))(
  ( (ListLongMap!13182 (toList!6606 List!20348)) )
))
(declare-fun lt!432652 () ListLongMap!13181)

(declare-fun zeroValue!1367 () V!34689)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34689)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3791 (array!60585 array!60583 (_ BitVec 32) (_ BitVec 32) V!34689 V!34689 (_ BitVec 32) Int) ListLongMap!13181)

(assert (=> b!973654 (= lt!432652 (getCurrentListMap!3791 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973655 () Bool)

(declare-fun e!548855 () Bool)

(assert (=> b!973655 (= e!548855 tp_is_empty!22279)))

(declare-fun b!973656 () Bool)

(declare-fun res!651856 () Bool)

(assert (=> b!973656 (=> (not res!651856) (not e!548858))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973656 (= res!651856 (validKeyInArray!0 (select (arr!29152 _keys!1717) i!822)))))

(declare-fun b!973657 () Bool)

(declare-fun res!651861 () Bool)

(assert (=> b!973657 (=> (not res!651861) (not e!548858))))

(declare-datatypes ((List!20349 0))(
  ( (Nil!20346) (Cons!20345 (h!21507 (_ BitVec 64)) (t!28834 List!20349)) )
))
(declare-fun arrayNoDuplicates!0 (array!60585 (_ BitVec 32) List!20349) Bool)

(assert (=> b!973657 (= res!651861 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20346))))

(declare-fun b!973658 () Bool)

(declare-fun res!651860 () Bool)

(assert (=> b!973658 (=> (not res!651860) (not e!548858))))

(assert (=> b!973658 (= res!651860 (and (= (size!29631 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29632 _keys!1717) (size!29631 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35428 () Bool)

(assert (=> mapIsEmpty!35428 mapRes!35428))

(declare-fun b!973659 () Bool)

(assert (=> b!973659 (= e!548857 (and e!548855 mapRes!35428))))

(declare-fun condMapEmpty!35428 () Bool)

(declare-fun mapDefault!35428 () ValueCell!10658)

