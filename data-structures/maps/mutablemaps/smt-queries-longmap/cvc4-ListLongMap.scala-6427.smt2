; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82390 () Bool)

(assert start!82390)

(declare-fun b_free!18629 () Bool)

(declare-fun b_next!18629 () Bool)

(assert (=> start!82390 (= b_free!18629 (not b_next!18629))))

(declare-fun tp!64858 () Bool)

(declare-fun b_and!30135 () Bool)

(assert (=> start!82390 (= tp!64858 b_and!30135)))

(declare-fun b!960164 () Bool)

(declare-fun res!642829 () Bool)

(declare-fun e!541283 () Bool)

(assert (=> b!960164 (=> (not res!642829) (not e!541283))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58785 0))(
  ( (array!58786 (arr!28262 (Array (_ BitVec 32) (_ BitVec 64))) (size!28742 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58785)

(declare-datatypes ((V!33437 0))(
  ( (V!33438 (val!10721 Int)) )
))
(declare-datatypes ((ValueCell!10189 0))(
  ( (ValueCellFull!10189 (v!13278 V!33437)) (EmptyCell!10189) )
))
(declare-datatypes ((array!58787 0))(
  ( (array!58788 (arr!28263 (Array (_ BitVec 32) ValueCell!10189)) (size!28743 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58787)

(assert (=> b!960164 (= res!642829 (and (= (size!28743 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28742 _keys!1668) (size!28743 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!960165 () Bool)

(declare-fun res!642832 () Bool)

(assert (=> b!960165 (=> (not res!642832) (not e!541283))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!960165 (= res!642832 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28742 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28742 _keys!1668))))))

(declare-fun b!960166 () Bool)

(declare-fun res!642834 () Bool)

(assert (=> b!960166 (=> (not res!642834) (not e!541283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58785 (_ BitVec 32)) Bool)

(assert (=> b!960166 (= res!642834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960167 () Bool)

(declare-fun e!541279 () Bool)

(declare-fun e!541281 () Bool)

(declare-fun mapRes!33991 () Bool)

(assert (=> b!960167 (= e!541279 (and e!541281 mapRes!33991))))

(declare-fun condMapEmpty!33991 () Bool)

(declare-fun mapDefault!33991 () ValueCell!10189)

