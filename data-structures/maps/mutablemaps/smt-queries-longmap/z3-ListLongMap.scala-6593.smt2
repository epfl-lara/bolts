; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83472 () Bool)

(assert start!83472)

(declare-fun b!974488 () Bool)

(declare-datatypes ((array!60687 0))(
  ( (array!60688 (arr!29203 (Array (_ BitVec 32) (_ BitVec 64))) (size!29683 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60687)

(declare-fun e!549286 () Bool)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974488 (= e!549286 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29683 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29683 _keys!1717)) (bvslt i!822 #b00000000000000000000000000000000)))))

(declare-fun b!974489 () Bool)

(declare-fun e!549288 () Bool)

(declare-fun e!549285 () Bool)

(declare-fun mapRes!35512 () Bool)

(assert (=> b!974489 (= e!549288 (and e!549285 mapRes!35512))))

(declare-fun condMapEmpty!35512 () Bool)

(declare-datatypes ((V!34763 0))(
  ( (V!34764 (val!11218 Int)) )
))
(declare-datatypes ((ValueCell!10686 0))(
  ( (ValueCellFull!10686 (v!13777 V!34763)) (EmptyCell!10686) )
))
(declare-datatypes ((array!60689 0))(
  ( (array!60690 (arr!29204 (Array (_ BitVec 32) ValueCell!10686)) (size!29684 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60689)

(declare-fun mapDefault!35512 () ValueCell!10686)

(assert (=> b!974489 (= condMapEmpty!35512 (= (arr!29204 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10686)) mapDefault!35512)))))

(declare-fun b!974490 () Bool)

(declare-fun res!652439 () Bool)

(assert (=> b!974490 (=> (not res!652439) (not e!549286))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!974490 (= res!652439 (and (= (size!29684 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29683 _keys!1717) (size!29684 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35512 () Bool)

(assert (=> mapIsEmpty!35512 mapRes!35512))

(declare-fun b!974491 () Bool)

(declare-fun tp_is_empty!22335 () Bool)

(assert (=> b!974491 (= e!549285 tp_is_empty!22335)))

(declare-fun res!652438 () Bool)

(assert (=> start!83472 (=> (not res!652438) (not e!549286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83472 (= res!652438 (validMask!0 mask!2147))))

(assert (=> start!83472 e!549286))

(assert (=> start!83472 true))

(declare-fun array_inv!22483 (array!60689) Bool)

(assert (=> start!83472 (and (array_inv!22483 _values!1425) e!549288)))

(declare-fun array_inv!22484 (array!60687) Bool)

(assert (=> start!83472 (array_inv!22484 _keys!1717)))

(declare-fun b!974492 () Bool)

(declare-fun res!652440 () Bool)

(assert (=> b!974492 (=> (not res!652440) (not e!549286))))

(declare-datatypes ((List!20391 0))(
  ( (Nil!20388) (Cons!20387 (h!21549 (_ BitVec 64)) (t!28876 List!20391)) )
))
(declare-fun arrayNoDuplicates!0 (array!60687 (_ BitVec 32) List!20391) Bool)

(assert (=> b!974492 (= res!652440 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20388))))

(declare-fun mapNonEmpty!35512 () Bool)

(declare-fun tp!67585 () Bool)

(declare-fun e!549287 () Bool)

(assert (=> mapNonEmpty!35512 (= mapRes!35512 (and tp!67585 e!549287))))

(declare-fun mapKey!35512 () (_ BitVec 32))

(declare-fun mapValue!35512 () ValueCell!10686)

(declare-fun mapRest!35512 () (Array (_ BitVec 32) ValueCell!10686))

(assert (=> mapNonEmpty!35512 (= (arr!29204 _values!1425) (store mapRest!35512 mapKey!35512 mapValue!35512))))

(declare-fun b!974493 () Bool)

(assert (=> b!974493 (= e!549287 tp_is_empty!22335)))

(declare-fun b!974494 () Bool)

(declare-fun res!652441 () Bool)

(assert (=> b!974494 (=> (not res!652441) (not e!549286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60687 (_ BitVec 32)) Bool)

(assert (=> b!974494 (= res!652441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(assert (= (and start!83472 res!652438) b!974490))

(assert (= (and b!974490 res!652439) b!974494))

(assert (= (and b!974494 res!652441) b!974492))

(assert (= (and b!974492 res!652440) b!974488))

(assert (= (and b!974489 condMapEmpty!35512) mapIsEmpty!35512))

(assert (= (and b!974489 (not condMapEmpty!35512)) mapNonEmpty!35512))

(get-info :version)

(assert (= (and mapNonEmpty!35512 ((_ is ValueCellFull!10686) mapValue!35512)) b!974493))

(assert (= (and b!974489 ((_ is ValueCellFull!10686) mapDefault!35512)) b!974491))

(assert (= start!83472 b!974489))

(declare-fun m!902069 () Bool)

(assert (=> start!83472 m!902069))

(declare-fun m!902071 () Bool)

(assert (=> start!83472 m!902071))

(declare-fun m!902073 () Bool)

(assert (=> start!83472 m!902073))

(declare-fun m!902075 () Bool)

(assert (=> b!974492 m!902075))

(declare-fun m!902077 () Bool)

(assert (=> mapNonEmpty!35512 m!902077))

(declare-fun m!902079 () Bool)

(assert (=> b!974494 m!902079))

(check-sat (not b!974492) tp_is_empty!22335 (not start!83472) (not mapNonEmpty!35512) (not b!974494))
(check-sat)
