; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83222 () Bool)

(assert start!83222)

(declare-fun b_free!19187 () Bool)

(declare-fun b_next!19187 () Bool)

(assert (=> start!83222 (= b_free!19187 (not b_next!19187))))

(declare-fun tp!66840 () Bool)

(declare-fun b_and!30693 () Bool)

(assert (=> start!83222 (= tp!66840 b_and!30693)))

(declare-fun b!970478 () Bool)

(declare-fun res!649667 () Bool)

(declare-fun e!547150 () Bool)

(assert (=> b!970478 (=> (not res!649667) (not e!547150))))

(declare-datatypes ((array!60209 0))(
  ( (array!60210 (arr!28964 (Array (_ BitVec 32) (_ BitVec 64))) (size!29444 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60209)

(declare-datatypes ((List!20206 0))(
  ( (Nil!20203) (Cons!20202 (h!21364 (_ BitVec 64)) (t!28577 List!20206)) )
))
(declare-fun arrayNoDuplicates!0 (array!60209 (_ BitVec 32) List!20206) Bool)

(assert (=> b!970478 (= res!649667 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20203))))

(declare-fun b!970479 () Bool)

(declare-fun e!547148 () Bool)

(declare-fun tp_is_empty!22085 () Bool)

(assert (=> b!970479 (= e!547148 tp_is_empty!22085)))

(declare-fun mapIsEmpty!35137 () Bool)

(declare-fun mapRes!35137 () Bool)

(assert (=> mapIsEmpty!35137 mapRes!35137))

(declare-fun b!970480 () Bool)

(declare-fun res!649669 () Bool)

(assert (=> b!970480 (=> (not res!649669) (not e!547150))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34429 0))(
  ( (V!34430 (val!11093 Int)) )
))
(declare-datatypes ((ValueCell!10561 0))(
  ( (ValueCellFull!10561 (v!13652 V!34429)) (EmptyCell!10561) )
))
(declare-datatypes ((array!60211 0))(
  ( (array!60212 (arr!28965 (Array (_ BitVec 32) ValueCell!10561)) (size!29445 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60211)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970480 (= res!649669 (and (= (size!29445 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29444 _keys!1717) (size!29445 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970481 () Bool)

(declare-fun res!649670 () Bool)

(assert (=> b!970481 (=> (not res!649670) (not e!547150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60209 (_ BitVec 32)) Bool)

(assert (=> b!970481 (= res!649670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!649671 () Bool)

(assert (=> start!83222 (=> (not res!649671) (not e!547150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83222 (= res!649671 (validMask!0 mask!2147))))

(assert (=> start!83222 e!547150))

(assert (=> start!83222 true))

(declare-fun e!547152 () Bool)

(declare-fun array_inv!22309 (array!60211) Bool)

(assert (=> start!83222 (and (array_inv!22309 _values!1425) e!547152)))

(assert (=> start!83222 tp_is_empty!22085))

(assert (=> start!83222 tp!66840))

(declare-fun array_inv!22310 (array!60209) Bool)

(assert (=> start!83222 (array_inv!22310 _keys!1717)))

(declare-fun b!970482 () Bool)

(declare-fun res!649672 () Bool)

(assert (=> b!970482 (=> (not res!649672) (not e!547150))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970482 (= res!649672 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29444 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29444 _keys!1717))))))

(declare-fun b!970483 () Bool)

(declare-fun res!649668 () Bool)

(assert (=> b!970483 (=> (not res!649668) (not e!547150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970483 (= res!649668 (validKeyInArray!0 (select (arr!28964 _keys!1717) i!822)))))

(declare-fun b!970484 () Bool)

(assert (=> b!970484 (= e!547150 false)))

(declare-fun zeroValue!1367 () V!34429)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34429)

(declare-fun lt!431704 () Bool)

(declare-datatypes ((tuple2!14316 0))(
  ( (tuple2!14317 (_1!7168 (_ BitVec 64)) (_2!7168 V!34429)) )
))
(declare-datatypes ((List!20207 0))(
  ( (Nil!20204) (Cons!20203 (h!21365 tuple2!14316) (t!28578 List!20207)) )
))
(declare-datatypes ((ListLongMap!13027 0))(
  ( (ListLongMap!13028 (toList!6529 List!20207)) )
))
(declare-fun contains!5584 (ListLongMap!13027 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3714 (array!60209 array!60211 (_ BitVec 32) (_ BitVec 32) V!34429 V!34429 (_ BitVec 32) Int) ListLongMap!13027)

(assert (=> b!970484 (= lt!431704 (contains!5584 (getCurrentListMap!3714 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28964 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35137 () Bool)

(declare-fun tp!66841 () Bool)

(declare-fun e!547151 () Bool)

(assert (=> mapNonEmpty!35137 (= mapRes!35137 (and tp!66841 e!547151))))

(declare-fun mapValue!35137 () ValueCell!10561)

(declare-fun mapKey!35137 () (_ BitVec 32))

(declare-fun mapRest!35137 () (Array (_ BitVec 32) ValueCell!10561))

(assert (=> mapNonEmpty!35137 (= (arr!28965 _values!1425) (store mapRest!35137 mapKey!35137 mapValue!35137))))

(declare-fun b!970485 () Bool)

(assert (=> b!970485 (= e!547152 (and e!547148 mapRes!35137))))

(declare-fun condMapEmpty!35137 () Bool)

(declare-fun mapDefault!35137 () ValueCell!10561)

