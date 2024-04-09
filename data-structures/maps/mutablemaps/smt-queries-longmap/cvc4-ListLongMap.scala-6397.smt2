; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82210 () Bool)

(assert start!82210)

(declare-fun res!641147 () Bool)

(declare-fun e!539932 () Bool)

(assert (=> start!82210 (=> (not res!641147) (not e!539932))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82210 (= res!641147 (validMask!0 mask!2088))))

(assert (=> start!82210 e!539932))

(assert (=> start!82210 true))

(declare-datatypes ((array!58439 0))(
  ( (array!58440 (arr!28089 (Array (_ BitVec 32) (_ BitVec 64))) (size!28569 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58439)

(declare-fun array_inv!21733 (array!58439) Bool)

(assert (=> start!82210 (array_inv!21733 _keys!1668)))

(declare-datatypes ((V!33197 0))(
  ( (V!33198 (val!10631 Int)) )
))
(declare-datatypes ((ValueCell!10099 0))(
  ( (ValueCellFull!10099 (v!13188 V!33197)) (EmptyCell!10099) )
))
(declare-datatypes ((array!58441 0))(
  ( (array!58442 (arr!28090 (Array (_ BitVec 32) ValueCell!10099)) (size!28570 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58441)

(declare-fun e!539933 () Bool)

(declare-fun array_inv!21734 (array!58441) Bool)

(assert (=> start!82210 (and (array_inv!21734 _values!1386) e!539933)))

(declare-fun mapIsEmpty!33721 () Bool)

(declare-fun mapRes!33721 () Bool)

(assert (=> mapIsEmpty!33721 mapRes!33721))

(declare-fun mapNonEmpty!33721 () Bool)

(declare-fun tp!64327 () Bool)

(declare-fun e!539929 () Bool)

(assert (=> mapNonEmpty!33721 (= mapRes!33721 (and tp!64327 e!539929))))

(declare-fun mapKey!33721 () (_ BitVec 32))

(declare-fun mapValue!33721 () ValueCell!10099)

(declare-fun mapRest!33721 () (Array (_ BitVec 32) ValueCell!10099))

(assert (=> mapNonEmpty!33721 (= (arr!28090 _values!1386) (store mapRest!33721 mapKey!33721 mapValue!33721))))

(declare-fun b!957671 () Bool)

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!957671 (= e!539932 (bvsgt from!2064 (size!28569 _keys!1668)))))

(declare-fun b!957672 () Bool)

(declare-fun e!539931 () Bool)

(declare-fun tp_is_empty!21161 () Bool)

(assert (=> b!957672 (= e!539931 tp_is_empty!21161)))

(declare-fun b!957673 () Bool)

(declare-fun res!641150 () Bool)

(assert (=> b!957673 (=> (not res!641150) (not e!539932))))

(declare-datatypes ((List!19661 0))(
  ( (Nil!19658) (Cons!19657 (h!20819 (_ BitVec 64)) (t!28032 List!19661)) )
))
(declare-fun arrayNoDuplicates!0 (array!58439 (_ BitVec 32) List!19661) Bool)

(assert (=> b!957673 (= res!641150 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19658))))

(declare-fun b!957674 () Bool)

(declare-fun res!641148 () Bool)

(assert (=> b!957674 (=> (not res!641148) (not e!539932))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58439 (_ BitVec 32)) Bool)

(assert (=> b!957674 (= res!641148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957675 () Bool)

(assert (=> b!957675 (= e!539929 tp_is_empty!21161)))

(declare-fun b!957676 () Bool)

(declare-fun res!641146 () Bool)

(assert (=> b!957676 (=> (not res!641146) (not e!539932))))

(declare-fun i!793 () (_ BitVec 32))

(assert (=> b!957676 (= res!641146 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28569 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28569 _keys!1668))))))

(declare-fun b!957677 () Bool)

(declare-fun res!641151 () Bool)

(assert (=> b!957677 (=> (not res!641151) (not e!539932))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957677 (= res!641151 (and (= (size!28570 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28569 _keys!1668) (size!28570 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957678 () Bool)

(declare-fun res!641149 () Bool)

(assert (=> b!957678 (=> (not res!641149) (not e!539932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957678 (= res!641149 (validKeyInArray!0 (select (arr!28089 _keys!1668) i!793)))))

(declare-fun b!957679 () Bool)

(assert (=> b!957679 (= e!539933 (and e!539931 mapRes!33721))))

(declare-fun condMapEmpty!33721 () Bool)

(declare-fun mapDefault!33721 () ValueCell!10099)

