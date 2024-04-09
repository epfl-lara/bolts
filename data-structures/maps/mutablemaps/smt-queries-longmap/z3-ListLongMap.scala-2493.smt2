; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38786 () Bool)

(assert start!38786)

(declare-fun mapNonEmpty!16917 () Bool)

(declare-fun mapRes!16917 () Bool)

(declare-fun tp!33036 () Bool)

(declare-fun e!243175 () Bool)

(assert (=> mapNonEmpty!16917 (= mapRes!16917 (and tp!33036 e!243175))))

(declare-datatypes ((V!14701 0))(
  ( (V!14702 (val!5143 Int)) )
))
(declare-datatypes ((ValueCell!4755 0))(
  ( (ValueCellFull!4755 (v!7386 V!14701)) (EmptyCell!4755) )
))
(declare-fun mapValue!16917 () ValueCell!4755)

(declare-datatypes ((array!24261 0))(
  ( (array!24262 (arr!11577 (Array (_ BitVec 32) ValueCell!4755)) (size!11929 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24261)

(declare-fun mapKey!16917 () (_ BitVec 32))

(declare-fun mapRest!16917 () (Array (_ BitVec 32) ValueCell!4755))

(assert (=> mapNonEmpty!16917 (= (arr!11577 _values!549) (store mapRest!16917 mapKey!16917 mapValue!16917))))

(declare-fun b!404168 () Bool)

(declare-fun res!233136 () Bool)

(declare-fun e!243170 () Bool)

(assert (=> b!404168 (=> (not res!233136) (not e!243170))))

(declare-datatypes ((array!24263 0))(
  ( (array!24264 (arr!11578 (Array (_ BitVec 32) (_ BitVec 64))) (size!11930 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24263)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24263 (_ BitVec 32)) Bool)

(assert (=> b!404168 (= res!233136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404169 () Bool)

(declare-fun tp_is_empty!10197 () Bool)

(assert (=> b!404169 (= e!243175 tp_is_empty!10197)))

(declare-fun b!404170 () Bool)

(declare-fun res!233141 () Bool)

(assert (=> b!404170 (=> (not res!233141) (not e!243170))))

(declare-datatypes ((List!6719 0))(
  ( (Nil!6716) (Cons!6715 (h!7571 (_ BitVec 64)) (t!11901 List!6719)) )
))
(declare-fun arrayNoDuplicates!0 (array!24263 (_ BitVec 32) List!6719) Bool)

(assert (=> b!404170 (= res!233141 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6716))))

(declare-fun b!404171 () Bool)

(declare-fun res!233133 () Bool)

(assert (=> b!404171 (=> (not res!233133) (not e!243170))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404171 (= res!233133 (or (= (select (arr!11578 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11578 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404172 () Bool)

(declare-fun res!233139 () Bool)

(assert (=> b!404172 (=> (not res!233139) (not e!243170))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404172 (= res!233139 (validKeyInArray!0 k0!794))))

(declare-fun b!404173 () Bool)

(declare-fun res!233142 () Bool)

(assert (=> b!404173 (=> (not res!233142) (not e!243170))))

(assert (=> b!404173 (= res!233142 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11930 _keys!709))))))

(declare-fun b!404174 () Bool)

(declare-fun res!233140 () Bool)

(assert (=> b!404174 (=> (not res!233140) (not e!243170))))

(declare-fun arrayContainsKey!0 (array!24263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404174 (= res!233140 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!404175 () Bool)

(declare-fun res!233135 () Bool)

(assert (=> b!404175 (=> (not res!233135) (not e!243170))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!404175 (= res!233135 (and (= (size!11929 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11930 _keys!709) (size!11929 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!233137 () Bool)

(assert (=> start!38786 (=> (not res!233137) (not e!243170))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38786 (= res!233137 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11930 _keys!709))))))

(assert (=> start!38786 e!243170))

(assert (=> start!38786 true))

(declare-fun e!243174 () Bool)

(declare-fun array_inv!8460 (array!24261) Bool)

(assert (=> start!38786 (and (array_inv!8460 _values!549) e!243174)))

(declare-fun array_inv!8461 (array!24263) Bool)

(assert (=> start!38786 (array_inv!8461 _keys!709)))

(declare-fun b!404176 () Bool)

(declare-fun e!243171 () Bool)

(assert (=> b!404176 (= e!243174 (and e!243171 mapRes!16917))))

(declare-fun condMapEmpty!16917 () Bool)

(declare-fun mapDefault!16917 () ValueCell!4755)

(assert (=> b!404176 (= condMapEmpty!16917 (= (arr!11577 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4755)) mapDefault!16917)))))

(declare-fun b!404177 () Bool)

(declare-fun e!243173 () Bool)

(assert (=> b!404177 (= e!243173 false)))

(declare-fun lt!188132 () Bool)

(declare-fun lt!188133 () array!24263)

(assert (=> b!404177 (= lt!188132 (arrayNoDuplicates!0 lt!188133 #b00000000000000000000000000000000 Nil!6716))))

(declare-fun b!404178 () Bool)

(assert (=> b!404178 (= e!243171 tp_is_empty!10197)))

(declare-fun b!404179 () Bool)

(assert (=> b!404179 (= e!243170 e!243173)))

(declare-fun res!233134 () Bool)

(assert (=> b!404179 (=> (not res!233134) (not e!243173))))

(assert (=> b!404179 (= res!233134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188133 mask!1025))))

(assert (=> b!404179 (= lt!188133 (array!24264 (store (arr!11578 _keys!709) i!563 k0!794) (size!11930 _keys!709)))))

(declare-fun mapIsEmpty!16917 () Bool)

(assert (=> mapIsEmpty!16917 mapRes!16917))

(declare-fun b!404180 () Bool)

(declare-fun res!233138 () Bool)

(assert (=> b!404180 (=> (not res!233138) (not e!243170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404180 (= res!233138 (validMask!0 mask!1025))))

(assert (= (and start!38786 res!233137) b!404180))

(assert (= (and b!404180 res!233138) b!404175))

(assert (= (and b!404175 res!233135) b!404168))

(assert (= (and b!404168 res!233136) b!404170))

(assert (= (and b!404170 res!233141) b!404173))

(assert (= (and b!404173 res!233142) b!404172))

(assert (= (and b!404172 res!233139) b!404171))

(assert (= (and b!404171 res!233133) b!404174))

(assert (= (and b!404174 res!233140) b!404179))

(assert (= (and b!404179 res!233134) b!404177))

(assert (= (and b!404176 condMapEmpty!16917) mapIsEmpty!16917))

(assert (= (and b!404176 (not condMapEmpty!16917)) mapNonEmpty!16917))

(get-info :version)

(assert (= (and mapNonEmpty!16917 ((_ is ValueCellFull!4755) mapValue!16917)) b!404169))

(assert (= (and b!404176 ((_ is ValueCellFull!4755) mapDefault!16917)) b!404178))

(assert (= start!38786 b!404176))

(declare-fun m!397077 () Bool)

(assert (=> b!404171 m!397077))

(declare-fun m!397079 () Bool)

(assert (=> b!404172 m!397079))

(declare-fun m!397081 () Bool)

(assert (=> b!404180 m!397081))

(declare-fun m!397083 () Bool)

(assert (=> b!404179 m!397083))

(declare-fun m!397085 () Bool)

(assert (=> b!404179 m!397085))

(declare-fun m!397087 () Bool)

(assert (=> b!404170 m!397087))

(declare-fun m!397089 () Bool)

(assert (=> b!404174 m!397089))

(declare-fun m!397091 () Bool)

(assert (=> b!404177 m!397091))

(declare-fun m!397093 () Bool)

(assert (=> b!404168 m!397093))

(declare-fun m!397095 () Bool)

(assert (=> mapNonEmpty!16917 m!397095))

(declare-fun m!397097 () Bool)

(assert (=> start!38786 m!397097))

(declare-fun m!397099 () Bool)

(assert (=> start!38786 m!397099))

(check-sat (not b!404177) (not start!38786) (not mapNonEmpty!16917) tp_is_empty!10197 (not b!404172) (not b!404174) (not b!404168) (not b!404170) (not b!404179) (not b!404180))
(check-sat)
