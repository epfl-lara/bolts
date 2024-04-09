; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83446 () Bool)

(assert start!83446)

(declare-fun b_free!19411 () Bool)

(declare-fun b_next!19411 () Bool)

(assert (=> start!83446 (= b_free!19411 (not b_next!19411))))

(declare-fun tp!67512 () Bool)

(declare-fun b_and!31031 () Bool)

(assert (=> start!83446 (= tp!67512 b_and!31031)))

(declare-fun b!974104 () Bool)

(declare-fun e!549082 () Bool)

(declare-fun tp_is_empty!22309 () Bool)

(assert (=> b!974104 (= e!549082 tp_is_empty!22309)))

(declare-fun b!974105 () Bool)

(declare-fun res!652175 () Bool)

(declare-fun e!549080 () Bool)

(assert (=> b!974105 (=> (not res!652175) (not e!549080))))

(declare-datatypes ((array!60639 0))(
  ( (array!60640 (arr!29179 (Array (_ BitVec 32) (_ BitVec 64))) (size!29659 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60639)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974105 (= res!652175 (validKeyInArray!0 (select (arr!29179 _keys!1717) i!822)))))

(declare-fun res!652176 () Bool)

(assert (=> start!83446 (=> (not res!652176) (not e!549080))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83446 (= res!652176 (validMask!0 mask!2147))))

(assert (=> start!83446 e!549080))

(assert (=> start!83446 true))

(declare-datatypes ((V!34729 0))(
  ( (V!34730 (val!11205 Int)) )
))
(declare-datatypes ((ValueCell!10673 0))(
  ( (ValueCellFull!10673 (v!13764 V!34729)) (EmptyCell!10673) )
))
(declare-datatypes ((array!60641 0))(
  ( (array!60642 (arr!29180 (Array (_ BitVec 32) ValueCell!10673)) (size!29660 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60641)

(declare-fun e!549084 () Bool)

(declare-fun array_inv!22467 (array!60641) Bool)

(assert (=> start!83446 (and (array_inv!22467 _values!1425) e!549084)))

(assert (=> start!83446 tp_is_empty!22309))

(assert (=> start!83446 tp!67512))

(declare-fun array_inv!22468 (array!60639) Bool)

(assert (=> start!83446 (array_inv!22468 _keys!1717)))

(declare-fun b!974106 () Bool)

(declare-fun res!652173 () Bool)

(assert (=> b!974106 (=> (not res!652173) (not e!549080))))

(declare-fun zeroValue!1367 () V!34729)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34729)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14494 0))(
  ( (tuple2!14495 (_1!7257 (_ BitVec 64)) (_2!7257 V!34729)) )
))
(declare-datatypes ((List!20372 0))(
  ( (Nil!20369) (Cons!20368 (h!21530 tuple2!14494) (t!28857 List!20372)) )
))
(declare-datatypes ((ListLongMap!13205 0))(
  ( (ListLongMap!13206 (toList!6618 List!20372)) )
))
(declare-fun contains!5659 (ListLongMap!13205 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3803 (array!60639 array!60641 (_ BitVec 32) (_ BitVec 32) V!34729 V!34729 (_ BitVec 32) Int) ListLongMap!13205)

(assert (=> b!974106 (= res!652173 (contains!5659 (getCurrentListMap!3803 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29179 _keys!1717) i!822)))))

(declare-fun b!974107 () Bool)

(declare-fun res!652171 () Bool)

(assert (=> b!974107 (=> (not res!652171) (not e!549080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60639 (_ BitVec 32)) Bool)

(assert (=> b!974107 (= res!652171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!35473 () Bool)

(declare-fun mapRes!35473 () Bool)

(assert (=> mapIsEmpty!35473 mapRes!35473))

(declare-fun b!974108 () Bool)

(declare-fun res!652172 () Bool)

(assert (=> b!974108 (=> (not res!652172) (not e!549080))))

(declare-datatypes ((List!20373 0))(
  ( (Nil!20370) (Cons!20369 (h!21531 (_ BitVec 64)) (t!28858 List!20373)) )
))
(declare-fun arrayNoDuplicates!0 (array!60639 (_ BitVec 32) List!20373) Bool)

(assert (=> b!974108 (= res!652172 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20370))))

(declare-fun mapNonEmpty!35473 () Bool)

(declare-fun tp!67513 () Bool)

(assert (=> mapNonEmpty!35473 (= mapRes!35473 (and tp!67513 e!549082))))

(declare-fun mapRest!35473 () (Array (_ BitVec 32) ValueCell!10673))

(declare-fun mapValue!35473 () ValueCell!10673)

(declare-fun mapKey!35473 () (_ BitVec 32))

(assert (=> mapNonEmpty!35473 (= (arr!29180 _values!1425) (store mapRest!35473 mapKey!35473 mapValue!35473))))

(declare-fun b!974109 () Bool)

(declare-fun res!652177 () Bool)

(assert (=> b!974109 (=> (not res!652177) (not e!549080))))

(assert (=> b!974109 (= res!652177 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29659 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29659 _keys!1717))))))

(declare-fun b!974110 () Bool)

(declare-fun res!652174 () Bool)

(assert (=> b!974110 (=> (not res!652174) (not e!549080))))

(assert (=> b!974110 (= res!652174 (and (= (size!29660 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29659 _keys!1717) (size!29660 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974111 () Bool)

(assert (=> b!974111 (= e!549080 false)))

(declare-fun lt!432697 () ListLongMap!13205)

(assert (=> b!974111 (= lt!432697 (getCurrentListMap!3803 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974112 () Bool)

(declare-fun e!549083 () Bool)

(assert (=> b!974112 (= e!549084 (and e!549083 mapRes!35473))))

(declare-fun condMapEmpty!35473 () Bool)

(declare-fun mapDefault!35473 () ValueCell!10673)

