; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82338 () Bool)

(assert start!82338)

(declare-fun mapNonEmpty!33913 () Bool)

(declare-fun mapRes!33913 () Bool)

(declare-fun tp!64708 () Bool)

(declare-fun e!540889 () Bool)

(assert (=> mapNonEmpty!33913 (= mapRes!33913 (and tp!64708 e!540889))))

(declare-datatypes ((V!33369 0))(
  ( (V!33370 (val!10695 Int)) )
))
(declare-datatypes ((ValueCell!10163 0))(
  ( (ValueCellFull!10163 (v!13252 V!33369)) (EmptyCell!10163) )
))
(declare-fun mapValue!33913 () ValueCell!10163)

(declare-datatypes ((array!58685 0))(
  ( (array!58686 (arr!28212 (Array (_ BitVec 32) ValueCell!10163)) (size!28692 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58685)

(declare-fun mapKey!33913 () (_ BitVec 32))

(declare-fun mapRest!33913 () (Array (_ BitVec 32) ValueCell!10163))

(assert (=> mapNonEmpty!33913 (= (arr!28212 _values!1386) (store mapRest!33913 mapKey!33913 mapValue!33913))))

(declare-fun e!540890 () Bool)

(declare-fun b!959476 () Bool)

(declare-datatypes ((array!58687 0))(
  ( (array!58688 (arr!28213 (Array (_ BitVec 32) (_ BitVec 64))) (size!28693 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58687)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959476 (= e!540890 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28693 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28693 _keys!1668)) (bvslt i!793 #b00000000000000000000000000000000)))))

(declare-fun b!959477 () Bool)

(declare-fun res!642377 () Bool)

(assert (=> b!959477 (=> (not res!642377) (not e!540890))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58687 (_ BitVec 32)) Bool)

(assert (=> b!959477 (= res!642377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun res!642375 () Bool)

(assert (=> start!82338 (=> (not res!642375) (not e!540890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82338 (= res!642375 (validMask!0 mask!2088))))

(assert (=> start!82338 e!540890))

(assert (=> start!82338 true))

(declare-fun array_inv!21815 (array!58687) Bool)

(assert (=> start!82338 (array_inv!21815 _keys!1668)))

(declare-fun e!540891 () Bool)

(declare-fun array_inv!21816 (array!58685) Bool)

(assert (=> start!82338 (and (array_inv!21816 _values!1386) e!540891)))

(declare-fun b!959478 () Bool)

(declare-fun res!642378 () Bool)

(assert (=> b!959478 (=> (not res!642378) (not e!540890))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!959478 (= res!642378 (and (= (size!28692 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28693 _keys!1668) (size!28692 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959479 () Bool)

(declare-fun tp_is_empty!21289 () Bool)

(assert (=> b!959479 (= e!540889 tp_is_empty!21289)))

(declare-fun b!959480 () Bool)

(declare-fun e!540892 () Bool)

(assert (=> b!959480 (= e!540892 tp_is_empty!21289)))

(declare-fun b!959481 () Bool)

(assert (=> b!959481 (= e!540891 (and e!540892 mapRes!33913))))

(declare-fun condMapEmpty!33913 () Bool)

(declare-fun mapDefault!33913 () ValueCell!10163)

