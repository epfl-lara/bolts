; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83510 () Bool)

(assert start!83510)

(declare-fun b_free!19469 () Bool)

(declare-fun b_next!19469 () Bool)

(assert (=> start!83510 (= b_free!19469 (not b_next!19469))))

(declare-fun tp!67695 () Bool)

(declare-fun b_and!31089 () Bool)

(assert (=> start!83510 (= tp!67695 b_and!31089)))

(declare-fun mapNonEmpty!35569 () Bool)

(declare-fun mapRes!35569 () Bool)

(declare-fun tp!67696 () Bool)

(declare-fun e!549571 () Bool)

(assert (=> mapNonEmpty!35569 (= mapRes!35569 (and tp!67696 e!549571))))

(declare-datatypes ((V!34813 0))(
  ( (V!34814 (val!11237 Int)) )
))
(declare-datatypes ((ValueCell!10705 0))(
  ( (ValueCellFull!10705 (v!13796 V!34813)) (EmptyCell!10705) )
))
(declare-datatypes ((array!60761 0))(
  ( (array!60762 (arr!29240 (Array (_ BitVec 32) ValueCell!10705)) (size!29720 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60761)

(declare-fun mapValue!35569 () ValueCell!10705)

(declare-fun mapKey!35569 () (_ BitVec 32))

(declare-fun mapRest!35569 () (Array (_ BitVec 32) ValueCell!10705))

(assert (=> mapNonEmpty!35569 (= (arr!29240 _values!1425) (store mapRest!35569 mapKey!35569 mapValue!35569))))

(declare-fun b!975037 () Bool)

(declare-fun res!652818 () Bool)

(declare-fun e!549569 () Bool)

(assert (=> b!975037 (=> (not res!652818) (not e!549569))))

(declare-datatypes ((array!60763 0))(
  ( (array!60764 (arr!29241 (Array (_ BitVec 32) (_ BitVec 64))) (size!29721 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60763)

(declare-datatypes ((List!20418 0))(
  ( (Nil!20415) (Cons!20414 (h!21576 (_ BitVec 64)) (t!28903 List!20418)) )
))
(declare-fun arrayNoDuplicates!0 (array!60763 (_ BitVec 32) List!20418) Bool)

(assert (=> b!975037 (= res!652818 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20415))))

(declare-fun res!652819 () Bool)

(assert (=> start!83510 (=> (not res!652819) (not e!549569))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83510 (= res!652819 (validMask!0 mask!2147))))

(assert (=> start!83510 e!549569))

(assert (=> start!83510 true))

(declare-fun e!549570 () Bool)

(declare-fun array_inv!22509 (array!60761) Bool)

(assert (=> start!83510 (and (array_inv!22509 _values!1425) e!549570)))

(declare-fun tp_is_empty!22373 () Bool)

(assert (=> start!83510 tp_is_empty!22373))

(assert (=> start!83510 tp!67695))

(declare-fun array_inv!22510 (array!60763) Bool)

(assert (=> start!83510 (array_inv!22510 _keys!1717)))

(declare-fun mapIsEmpty!35569 () Bool)

(assert (=> mapIsEmpty!35569 mapRes!35569))

(declare-fun b!975038 () Bool)

(declare-fun res!652817 () Bool)

(assert (=> b!975038 (=> (not res!652817) (not e!549569))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!975038 (= res!652817 (and (= (size!29720 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29721 _keys!1717) (size!29720 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975039 () Bool)

(declare-fun res!652816 () Bool)

(assert (=> b!975039 (=> (not res!652816) (not e!549569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60763 (_ BitVec 32)) Bool)

(assert (=> b!975039 (= res!652816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975040 () Bool)

(assert (=> b!975040 (= e!549571 tp_is_empty!22373)))

(declare-fun b!975041 () Bool)

(assert (=> b!975041 (= e!549569 false)))

(declare-fun zeroValue!1367 () V!34813)

(declare-datatypes ((tuple2!14544 0))(
  ( (tuple2!14545 (_1!7282 (_ BitVec 64)) (_2!7282 V!34813)) )
))
(declare-datatypes ((List!20419 0))(
  ( (Nil!20416) (Cons!20415 (h!21577 tuple2!14544) (t!28904 List!20419)) )
))
(declare-datatypes ((ListLongMap!13255 0))(
  ( (ListLongMap!13256 (toList!6643 List!20419)) )
))
(declare-fun lt!432784 () ListLongMap!13255)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34813)

(declare-fun defaultEntry!1428 () Int)

(declare-fun getCurrentListMap!3828 (array!60763 array!60761 (_ BitVec 32) (_ BitVec 32) V!34813 V!34813 (_ BitVec 32) Int) ListLongMap!13255)

(assert (=> b!975041 (= lt!432784 (getCurrentListMap!3828 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975042 () Bool)

(declare-fun res!652820 () Bool)

(assert (=> b!975042 (=> (not res!652820) (not e!549569))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975042 (= res!652820 (validKeyInArray!0 (select (arr!29241 _keys!1717) i!822)))))

(declare-fun b!975043 () Bool)

(declare-fun res!652822 () Bool)

(assert (=> b!975043 (=> (not res!652822) (not e!549569))))

(assert (=> b!975043 (= res!652822 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29721 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29721 _keys!1717))))))

(declare-fun b!975044 () Bool)

(declare-fun e!549572 () Bool)

(assert (=> b!975044 (= e!549570 (and e!549572 mapRes!35569))))

(declare-fun condMapEmpty!35569 () Bool)

(declare-fun mapDefault!35569 () ValueCell!10705)

