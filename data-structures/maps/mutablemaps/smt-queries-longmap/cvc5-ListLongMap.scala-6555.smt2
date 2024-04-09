; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83242 () Bool)

(assert start!83242)

(declare-fun b_free!19207 () Bool)

(declare-fun b_next!19207 () Bool)

(assert (=> start!83242 (= b_free!19207 (not b_next!19207))))

(declare-fun tp!66901 () Bool)

(declare-fun b_and!30713 () Bool)

(assert (=> start!83242 (= tp!66901 b_and!30713)))

(declare-fun b!970759 () Bool)

(declare-fun res!649862 () Bool)

(declare-fun e!547299 () Bool)

(assert (=> b!970759 (=> (not res!649862) (not e!547299))))

(declare-datatypes ((array!60243 0))(
  ( (array!60244 (arr!28981 (Array (_ BitVec 32) (_ BitVec 64))) (size!29461 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60243)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970759 (= res!649862 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29461 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29461 _keys!1717))))))

(declare-fun b!970761 () Bool)

(declare-fun res!649860 () Bool)

(assert (=> b!970761 (=> (not res!649860) (not e!547299))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60243 (_ BitVec 32)) Bool)

(assert (=> b!970761 (= res!649860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970762 () Bool)

(declare-fun e!547301 () Bool)

(declare-fun tp_is_empty!22105 () Bool)

(assert (=> b!970762 (= e!547301 tp_is_empty!22105)))

(declare-fun mapIsEmpty!35167 () Bool)

(declare-fun mapRes!35167 () Bool)

(assert (=> mapIsEmpty!35167 mapRes!35167))

(declare-fun b!970763 () Bool)

(declare-fun res!649864 () Bool)

(assert (=> b!970763 (=> (not res!649864) (not e!547299))))

(declare-datatypes ((List!20218 0))(
  ( (Nil!20215) (Cons!20214 (h!21376 (_ BitVec 64)) (t!28589 List!20218)) )
))
(declare-fun arrayNoDuplicates!0 (array!60243 (_ BitVec 32) List!20218) Bool)

(assert (=> b!970763 (= res!649864 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20215))))

(declare-fun b!970764 () Bool)

(declare-fun res!649858 () Bool)

(assert (=> b!970764 (=> (not res!649858) (not e!547299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970764 (= res!649858 (validKeyInArray!0 (select (arr!28981 _keys!1717) i!822)))))

(declare-fun b!970765 () Bool)

(declare-fun e!547300 () Bool)

(assert (=> b!970765 (= e!547300 (and e!547301 mapRes!35167))))

(declare-fun condMapEmpty!35167 () Bool)

(declare-datatypes ((V!34457 0))(
  ( (V!34458 (val!11103 Int)) )
))
(declare-datatypes ((ValueCell!10571 0))(
  ( (ValueCellFull!10571 (v!13662 V!34457)) (EmptyCell!10571) )
))
(declare-datatypes ((array!60245 0))(
  ( (array!60246 (arr!28982 (Array (_ BitVec 32) ValueCell!10571)) (size!29462 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60245)

(declare-fun mapDefault!35167 () ValueCell!10571)

